# This is the main state file for configuring openvpn.

{% from "openvpn/map.jinja" import map with context %}

# Install openvpn packages
openvpn_pkgs:
  pkg.installed:
    - pkgs:
      {% for pkg in map.pkgs %}
      - {{pkg }}
      {% endfor %}

# Ensure openvpn servcie is running and autostart is enabled
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs

# Generate diffie hellman files
{% for dh in map.dh_files %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: openssl dhparam -out {{ map.conf_dir }}/dh{{ dh }}.pem {{ dh }}
    - creates: {{ map.conf_dir }}/dh{{ dh }}.pem
{% endfor %}

# Deploy server config files
{% for name, config in salt['pillar.get']('openvpn:server', {}).iteritems() %}
openvpn_config_{{name}}:
  file.managed:
    - name: {{ map.conf_dir }}/{{name}}.conf
    - source: salt://openvpn/files/server.jinja
    - template: jinja
    - context:
        name: {{ name }}
        config: {{ config }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
      - service: openvpn_service
{% endfor %}

# Deploy client config files
{% for name, config in salt['pillar.get']('openvpn:client', {}).iteritems() %}
openvpn_config_{{name}}:
  file.managed:
    - name: {{ map.conf_dir }}/{{name}}.conf
    - source: salt://openvpn/files/client.jinja
    - template: jinja
    - context:
        name: {{ name }}
        config: {{ config }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
      - service: openvpn_service
{% endfor %}
