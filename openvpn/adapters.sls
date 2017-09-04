{% if salt['grains.get']('os_family') == 'Windows' %}
include:
  - openvpn

{% for type, names in salt['pillar.get']('openvpn', {}).items() %}
{%   if type in ['client', 'server', 'peer'] %}
{%     for name, config in names.items() %}
{%       if config.dev_node is defined %}
openvpn_tap_adapter_{{ config.dev_node }}:
  cmd.script:
    - source: salt://openvpn/files/tap-adapter.ps1
    - args: -New {{ config.dev_node }}
    - shell: powershell
    - stateful: True
    - require:
      - pkg: openvpn_pkgs
{%       endif %}
{%     endfor %}
{%   endif %}
{% endfor %}

{% endif %}
