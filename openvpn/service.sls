# Ensure openvpn service is running and autostart is enabled

{% from "openvpn/map.jinja" import map with context %}


{% if salt['grains.has_value']('systemd') %}
# If the OS is using systemd, then each openvpn config has its own service
# e.g for office.conf -> openvpn@office
{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% if type in ['client', 'server', 'peer'] %}
{% for name in names %}
openvpn_{{ name }}_service:
  service.running:
    - name: {{ 'openvpn@' ~ name }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
{% endfor %}
{% endif %}
{% endfor %}
{% else %}
# Ensure openvpn service is running and autostart is enabled
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
{% endif %}
