# Ensure openvpn service is running and autostart is enabled

{%- from "openvpn/map.jinja" import mapdata as map with context %}


{% if map.multi_services %}
# If the OS is using systemd, then each openvpn config has its own service
# e.g for office.conf -> openvpn@office
{% for type, names in salt['pillar.get']('openvpn', {}).items() %}
{% if type in ['client', 'server', 'peer'] %}
{% for name in names %}

# How to name the service (instance)?
{% if salt['grains.has_value']('systemd') %}
{#-
   Some distributions use /etc/openvpn/{client,server} as their working directory
   and openvpn-{client,server} as their service.
#}
{% set service_name = map.get(type, {}).get("service", map.service) ~ '@' ~ name %}
{#-
   For an successful upgrade we need to make sure the old services are deactivated.
   This affects at least Debian.
#}
{% set obsolete_service_name = map.service ~ '@' ~ name %}
{% if obsolete_service_name != service_name %}
obsolete_openvpn_{{ name }}_service:
  service.dead:
    - name: {{ obsolete_service_name }}
    - enable: False
{% endif %}
{% else %}
{% set service_name = map.service ~ '_' ~ name %}
{% endif %}

# Create an init script?
{% if grains['os_family'] == 'FreeBSD' %}
/usr/local/etc/rc.d/openvpn_{{ name }}:
  file.symlink:
    - target: /usr/local/etc/rc.d/openvpn
{% endif %}

openvpn_{{ name }}_service:
  service.{{ map.service_function }}:
    - name: {{ service_name }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
      - sls: openvpn.install
{% if grains['os_family'] == 'FreeBSD' %}
    - watch:
      - file: /usr/local/etc/rc.d/openvpn_{{ name }}
{% endif %}

{% endfor %}
{% endif %}
{% endfor %}
{% else %}
# Ensure openvpn service is running and autostart is enabled
openvpn_service:
  service.{{ map.service_function }}:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs
      - sls: openvpn.install
{% endif %}
