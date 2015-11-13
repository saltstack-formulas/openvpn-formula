{% from "openvpn/map.jinja" import map with context %}

include:
    - openvpn.config

{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% if type == 'server' or type == 'client' %}
{% for name, config in names.iteritems() %}
{# hardening #}
{% do config.update({'cipher': 'AES-256-CBC-HMAC-SHA1'}) %}
{% do config.update({'tls-cipher': 'TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384'}) %}
{% do config.update({'auth': 'SHA512'}) %}
extend:
    openvpn_config_{{ type }}_{{ name }}:
      file.managed:
        - context:
            name: {{ name }}
            config: {{ config }}
            user: {{ map.user }}
            group: {{ map.group }}

{% endfor %}
{% endif %}
{% endfor %}
