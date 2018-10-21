{%- from "openvpn/map.jinja" import map with context %}

# Generate diffie hellman files
{% if salt['pillar.get']('openvpn:server', False) %}
  {%- for dh in map.dh_files %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: openssl dhparam {% if map.dsaparam %}-dsaparam {% endif %}-out {{ map.conf_dir }}/dh{{ dh }}.pem {{ dh }}
    - creates: {{ map.conf_dir }}/dh{{ dh }}.pem
    - require:
      - pkg: openvpn_pkgs
  {%- endfor %}
{% endif %}
