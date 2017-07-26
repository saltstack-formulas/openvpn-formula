# This is the main state file for configuring openvpn.
{%- from "openvpn/map.jinja" import map with context %}

include:
  - openvpn.service

# Install openvpn packages
openvpn_pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in map.pkgs %}
      - {{ pkg }}
      {%- endfor %}
{% if salt['grains.get']('os_family') == 'Windows' %}
    - require:
      - win_pki: openvpn_publisher_cert

openvpn_publisher_cert:
  win_pki.import_cert:
    - name: salt://openvpn/files/openvpn-1.cer
    - store: TrustedPublisher
{% endif %}

{%- if map.external_repo_enabled == True and grains['os_family'] == "Debian" and grains['oscodename'] in map.external_repo_supported %}
# Install openvpn external repository
# https://community.openvpn.net/openvpn/wiki/OpenvpnSoftwareRepos
openvpn_external_repo:
  pkgrepo.managed:
    - name: deb http://build.openvpn.net/debian/openvpn/{{ map.external_repo_version }} {{ grains['oscodename'] }} main
    - file: /etc/apt/sources.list.d/openvpn-aptrepo.list
    - key_url: https://swupdate.openvpn.net/repos/repo-public.gpg
    - require_in:
      - pkg: openvpn_pkgs
{%- endif %}

# Generate diffie hellman files
{% if salt['pillar.get']('openvpn:server', False) %}
  {%- for dh in map.dh_files %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: openssl dhparam -out {{ map.conf_dir }}/dh{{ dh }}.pem {{ dh }}
    - creates: {{ map.conf_dir }}/dh{{ dh }}.pem
    - require:
      - pkg: openvpn_pkgs
  {%- endfor %}
{% endif %}
