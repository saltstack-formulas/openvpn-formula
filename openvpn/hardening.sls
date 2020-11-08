{% from "openvpn/map.jinja" import mapdata with context %}

include:
    - openvpn.config

extend:
{% for type, names in salt['pillar.get']('openvpn', {}).items() %}
{% if type == 'server' or type == 'client' %}
{% for name, config in names.items() %}
{# hardening #}
{% do config.update({'cipher': 'AES-256-CBC-HMAC-SHA1'}) %}
{% do config.update({'tls-cipher': 'TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384'}) %}
{% do config.update({'auth': 'SHA512'}) %}
{% do config.update({'tls_version_min': '1.2'}) %}
    openvpn_config_{{ type }}_{{ name }}:
      file.managed:
        - context:
            name: {{ name }}
            config: {{ config }}
            user: {{ mapdata.user }}
            group: {{ mapdata.group }}

{% endfor %}
{% endif %}
{% endfor %}
