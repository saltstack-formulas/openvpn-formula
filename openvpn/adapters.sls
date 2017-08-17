include:
  - openvpn

{% for adapter in salt['pillar.get']('openvpn:adapters:tap', []) %}
openvpn_tap_adapter_{{ adapter }}:
  cmd.script:
    - source: salt://openvpn/files/tap-adapter.ps1
    - args: -New {{ adapter }}
    - shell: powershell
    - stateful: True
    - require:
      - pkg: openvpn_pkgs
{% endfor %}
