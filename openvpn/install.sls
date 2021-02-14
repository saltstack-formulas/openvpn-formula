{%- from "openvpn/map.jinja" import mapdata as map with context %}

# Install openvpn packages
openvpn_pkgs:
{%- if salt['pillar.get']('openvpn:use_latest', False) %}
  pkg.latest:
{% else %}
  pkg.installed:
{% endif %}
    - pkgs:
      {%- for pkg in map.pkgs %}
      - {{ pkg }}
      {%- endfor %}

{% if salt['grains.get']('os_family') == 'Windows' %}
{%   for cert_num in ['1', '2'] %}
openvpn_publisher_cert_{{ cert_num }}:
  win_pki.import_cert:
    - name: salt://openvpn/files/openvpn-{{ cert_num }}.cer
    - store: TrustedPublisher
    - require_in:
      - pkg: openvpn_pkgs
{%   endfor %}
{% endif %}
