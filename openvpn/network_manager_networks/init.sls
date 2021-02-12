{%- from "openvpn/map.jinja" import mapdata as map with context %}

include:
  - openvpn.repo

{%- for pkg_name in map.network_manager_pkgs %}
{{ pkg_name }}:
  pkg.installed: []
{%- endfor %}

{%- set openvpn_pillar = salt['pillar.get']('openvpn', {}) %}
{%- set clients = openvpn_pillar.get('client', {}) %}
{%- set networks = openvpn_pillar.get('network_manager', {}).get('networks', {}) %}

{%- for name, data in networks.items() %}
{%-   set config = networks.get(name, {}) %}
"/etc/NetworkManager/system-connections/{{ name }}":
{%-   if data.get('remove', False) %}
  file.absent: []
{%-   else %}
  file.managed:
    - template: jinja
    - source: salt://openvpn/network_manager_networks/files/connection.jinja
    - defaults:
      network_name: "{{ name }}"
      config: {{ config | json }}
      clients: {{ clients | json }}
    - mode: 600
    - onchanges_in:
      - cmd: network_manager_connection_reload
{%-   endif %}
{%- endfor %}

{%- if networks.keys()|length > 0 %}
network_manager_connection_reload:
  cmd.run:
    - name: '/usr/bin/nmcli connection reload'
{%- endif %}
