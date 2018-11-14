{# This SLS serves only as a capsule to ease handling of dependencies. #}

{% from "openvpn/map.jinja" import map with context %}

{%- if map.manage_group is sameas false or map.user in ['nobody', 'nogroup'] %}
{%-   set manage_group = False %}
{%- else %}
{%-   set manage_group = True %}
openvpn_group:
  group.present:
    - name: {{ map.group }}
    - require_in:
      - file: openvpn_config_dir
      - sls: openvpn.config
{%- endif %}

{%- if not (map.manage_user is sameas false or map.user == 'nobody') %}
openvpn_user:
  user.present:
    - name: {{ map.user }}
    - gid: {{ map.group }}
{%-   if manage_group %}
    - require:
      - group: openvpn_group
{%-   endif %}
    - require_in:
      - file: openvpn_config_dir
      - sls: openvpn.config
{%- endif %}

openvpn_config_dir:
  file.directory:
    - name: {{ map.conf_dir }}
    - mode: 750
    - user: {{ map.user }}
    - group: {{ map.group }}
    - require_in:
      - sls: openvpn.config

