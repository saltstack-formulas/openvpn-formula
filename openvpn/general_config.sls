{# This SLS serves only as a capsule to ease handling of dependencies. #}

{% from "openvpn/map.jinja" import map with context %}

openvpn_config_dir:
  file.directory:
    - name: {{ map.conf_dir }}
    - mode: 750
    - user: {{ map.user }}
    - group: {{ map.group }}
    - require_in:
      - sls: openvpn.config

