{%- from "openvpn/map.jinja" import mapdata as map with context %}

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
{#- Simulating `grains.osfinger`, which is avoided since not available in all distros #}
{%- elif [grains.os, grains.osrelease] == ['Amazon', '2'] %}
openvpn_external_repo:
  pkgrepo.managed:
    - name: epel
    - humanname: Extra Packages for Enterprise Linux 7 - $basearch
    - mirrorlist: https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
    - failovermethod: priority
    - require_in:
      - pkg: openvpn_pkgs
{%- endif %}
