{%- from "openvpn/map.jinja" import map with context %}

include:
  - openvpn.install

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
