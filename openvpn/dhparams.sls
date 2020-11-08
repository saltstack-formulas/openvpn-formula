{%- from "openvpn/map.jinja" import mapdata with context %}

# Generate diffie hellman files
{% if salt['pillar.get']('openvpn:server', False) %}
  {#- Some distributions use /etc/openvpn/{client,server} as their working directory #}
  {%- set config_dir = mapdata.get("server", {}).get("conf_dir", mapdata.conf_dir) %}
  {%- for dh in mapdata.dh_files %}
    {%- set dh_file = config_dir ~ "/dh" ~ dh ~ ".pem" %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: '"{{ mapdata.bin_dir | default('', true) }}openssl" dhparam {% if mapdata.dsaparam %}-dsaparam {% endif %}-out "{{ dh_file }}" {{ dh }}'
    - creates: {{ dh_file }}
    - require:
      - pkg: openvpn_pkgs
  {%- endfor %}
{% endif %}
