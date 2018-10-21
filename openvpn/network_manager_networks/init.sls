{% from "openvpn/map.jinja" import map with context %}

include:
  - openvpn.repo

{%- for pkg_name in map.network_manager_pkgs %}
{{ pkg_name }}:
  pkg.installed: []
{%- endfor %}

{%- set networks = salt['pillar.get']('openvpn:network_manager:networks', {}) %}

{%- for name, data in networks.items() %}
"/etc/NetworkManager/system-connections/{{ name }}":
{%-   if data.get('remove', False) %}
  file.absent: []
{%-   else %}
  file.managed:
    - template: jinja
    - source: salt://openvpn/network_manager_networks/files/connection.jinja
    - defaults:
      network_name: "{{ name }}"
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
