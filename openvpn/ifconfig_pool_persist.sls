{% from "openvpn/map.jinja" import map with context %}

# deploy ifconfig_pool_persist files
{%- for filename, config in  salt['pillar.get']('openvpn', {}).get('ifconfig_pool_persist', {}).iteritems() %}
openvpn_config_ifconfig_pool_persist_{{ filename }}:
  file.managed:
    - name: {{ map.conf_dir }}/{{filename}}
    - source: salt://openvpn/files/ifconfig_pool_persist.jinja
    - template: jinja
    - context:
        name: filename
        config: {{ config }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
{% if map.service.endswith('@') %}
{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% if type == 'server' or type == 'client' %}
{% for name in names %}
      - service: openvpn_service_{{name}}
{% endfor %}
{% endif %}
{% endfor %}
{% else %}
      - service: openvpn_service
{% endif %}
{%- endfor %}
