# Ensure openvpn service is running and autostart is enabled

{% from "openvpn/map.jinja" import map with context %}

{% if map.service.endswith('@') %}
{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% if type == 'server' or type == 'client' %}
{% for name in names %}
openvpn_service_{{ name }}:
  service.running:
    - name: {{map.service}}{{ name }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
{% endfor %}
{% endif %}
{% endfor %}
{% else %}
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
{% endif %}
