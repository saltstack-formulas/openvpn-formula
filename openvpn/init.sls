# This is the main state file for configuring openvpn.

{% from "openvpn/map.jinja" import map with context %}

# Install openvpn packages
openvpn_pkgs:
  pkg.installed:
    - pkgs:
      {% for pkg in map.pkgs %}
      - {{pkg }}
      {% endfor %}

# Generate diffie hellman files
{% for dh in map.dh_files %}
openvpn_create_dh_{{ dh }}:
  cmd.run:
    - name: openssl dhparam -out {{ map.conf_dir }}/dh{{ dh }}.pem {{ dh }}
    - creates: {{ map.conf_dir }}/dh{{ dh }}.pem
{% endfor %}

{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% for name, config in names.iteritems() %}
# Deploy {{ type }} {{ name }} config files
openvpn_config_{{ type }}_{{ name }}:
  file.managed:
    - name: {{ map.conf_dir }}/{{name}}.conf
    - source: salt://openvpn/files/{{ type }}.jinja
    - template: jinja
    - context:
        name: {{ name }}
        config: {{ config }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
      - service: openvpn_service

{% if config.ca is defined and config.ca_content is defined %}
# Deploy {{ type }} {{ name }} CA file
openvpn_config_{{ type }}_{{ name }}_ca_file:
  file.managed:
    - name: {{ map.conf_dir }}/{{ config.ca }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:ca_content
    - makedirs: True
    - watch_in:
      - service: openvpn_service
{% endif %}

{% if config.cert is defined and config.cert_content is defined %}
# Deploy {{ type }} {{ name }} certificate file
openvpn_config_{{ type }}_{{ name }}_cert_file:
  file.managed:
    - name: {{ map.conf_dir }}/{{ config.cert }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:cert_content
    - makedirs: True
    - watch_in:
      - service: openvpn_service
{% endif %}

{% endfor %}
{% endfor %}

# Ensure openvpn service is running and autostart is enabled
openvpn_service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - require:
      - pkg: openvpn_pkgs

