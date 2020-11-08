{# This SLS serves only as a capsule to ease handling of dependencies. #}

{% from "openvpn/map.jinja" import mapdata with context %}

{%- if mapdata.manage_group is sameas false or mapdata.user in ['nobody', 'nogroup'] %}
{%-   set manage_group = False %}
{%- else %}
{%-   set manage_group = True %}
openvpn_group:
  group.present:
    - name: {{ mapdata.group }}
    - require_in:
      - file: openvpn_config_dir
      - sls: openvpn.config
{%- endif %}

{%- if not (mapdata.manage_user is sameas false or mapdata.user == 'nobody') %}
openvpn_user:
  user.present:
    - name: {{ mapdata.user }}
    - gid: {{ mapdata.group }}
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
    - name: {{ mapdata.conf_dir }}
{%- if not grains['os_family'] == 'Windows' %}
    - mode: 750
    - user: {{ mapdata.user }}
    - group: {{ mapdata.group }}
{%- endif %}
    - require_in:
      - sls: openvpn.config

{%- if grains.os_family == 'FreeBSD' %}
openvpn_kldload_if_tap:
  kmod.present:
    - name: if_tap
    - persist: True
    - require_in:
      - sls: openvpn.config
{%- endif %}
