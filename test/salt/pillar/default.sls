# -*- coding: utf-8 -*-
# vim: ft=yaml
---
{%- if grains['os_family'] == 'Windows' %}
{%-   set log_dir = 'C:\\Program Files\\OpenVPN\log\\' %}
{%-   set conf_dir = 'C:\\ProgramData\\OpenVPN\config\\' %}
{%- else %}
{%-   set log_dir = '/var/log/openvpn/' %}
{%-   set conf_dir = '/etc/openvpn/' %}
{%- endif %}
openvpn:
  lookup:
{%- if not grains['os_family'] == 'Windows' %}
    user: openvpn
    group: openvpn
    manage_user: true
    manage_group: true
    external_repo_enabled: true
{%- else %}
    pkgs:
      - openvpn: 2.4.11-I602-Win{{ {"8.1": "7"}[grains["osrelease"]]|default("10") }}
    service: OpenVPNService
{%- endif %}
    dh_files: ['512']
  server:
    myserver1:
      local: 127.0.0.1
      port: 2000
      proto: udp
      topology: p2p
      dev: tun
{%- if grains['os_family'] == 'Windows' %}
      dev_node: myserver1
{%- endif %}
      comp_lzo: "yes"
      ifconfig: 169.254.0.1 169.254.0.2
      log_append: '''{{ log_dir }}myserver1.log'''
      status: '''{{ log_dir }}myserver1-status.log'''
      secret: '''{{ conf_dir  }}myserver1_secret.key'''
      # /usr/sbin/openvpn --genkey --secret /dev/stdout
      secret_content: &secret_key |
        #
        # 2048 bit OpenVPN static key
        #
        -----BEGIN OpenVPN Static key V1-----
        6b3e7b098232e9c885f8deed5c069b02
        47a966595178cc30ebcd4e1042e019ef
        fdfbed752e26ef7b0877e0e0a6e4e38b
        ffed3fd9da205ff6cd39825d0f8a99ec
        324848682062676868b57e4474791042
        4dc4ad7f3ff7ba8815e31f950c7443c8
        b52441384936cbf50d2f4d051d0c889a
        f118dec5c749398cdce859fced60a4eb
        4e78abb9939f8dbe1cbdbbcaa914b539
        6258235dce1a8ef044a29f8ce018f183
        4b83f17a42b788c583cf006cccb5050f
        a1c53b22688d98a2092fcd23b160b01a
        064d84f1355c605287b30b140c3c5fa7
        b5e2a0a8def6eb46b3ab4a11b5cb4c96
        4c099bf8e74b8bf4e6509de69b7a79ad
        7391b6cf3f4ae296ecf8b552144a2947
        -----END OpenVPN Static key V1-----
  client:
    myclient1:
      remote:
        - 127.0.0.1 2000
      lport: 62000
      proto: udp
      topology: p2p
      dev: tun
{%- if grains['os_family'] == 'Windows' %}
      dev_node: myclient1
{%- endif %}
      comp_lzo: "yes"
      pull: false
      tls_client: false
      nobind: false
      ifconfig: 169.254.0.2 169.254.0.1
      status: '''{{ log_dir }}myclient1-status.log'''
      log_append: '''{{ log_dir }}myclient1.log'''
      secret: '''{{ conf_dir }}myclient1_secret.key'''
      # /usr/sbin/openvpn --genkey --secret /dev/stdout
      secret_content: *secret_key
      auth_nocache: true
