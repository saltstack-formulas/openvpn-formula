{% from "openvpn/map.jinja" import map with context %}

# deploy ifconfig_pool_persist files
{%- for filename, config in  salt['pillar.get']('openvpn', {}).get('ifconfig_pool_persist', {}).items() %}
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
{% if salt['grains.has_value']('systemd') %}
{% for type, names in salt['pillar.get']('openvpn', {}).items() %}
{% if type in ['client', 'server', 'peer'] %}
{% for name in names %}
      - service: openvpn_{{name}}_service
{% endfor %}
{% endif %}
{% endfor %}
{% else %}
      - service: openvpn_service
{% endif %}
{%- endfor %}
