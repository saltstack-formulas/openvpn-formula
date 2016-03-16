# This is the main state file for configuring openvpn.

{% from "openvpn/map.jinja" import map with context %}

# Install openvpn packages
openvpn_pkgs:
  pkg.installed:
    - pkgs:
      {% for pkg in map.pkgs %}
      - {{pkg }}
      {% endfor %}

# Generate diffie hellman files
{% for dh in map.dh_files %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: openssl dhparam -out {{ map.conf_dir }}/dh{{ dh }}.pem {{ dh }}
    - creates: {{ map.conf_dir }}/dh{{ dh }}.pem
{% endfor %}


# Ensure openvpn service is running and autostart is enabled
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs

{% if salt['ps.pgrep']('systemd')|length > 0 %}
{% for name, config in salt['pillar.get']('openvpn:server', {}).iteritems() %}
# for systemd systems, create service units for each OpenVPN server defined
openvpn_service_{{ name }}:
  service.running:
    - name: {{ map.service }}@{{ name }}
    - enable: True
    - require:
      - service: openvpn_service
{% endfor %}
{% else %}
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
{% endif %}
