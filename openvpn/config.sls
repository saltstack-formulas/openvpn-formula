{% from "openvpn/map.jinja" import map with context %}

include:
  - openvpn

{% for type, names in salt['pillar.get']('openvpn', {}).iteritems() %}
{% if type in ['client', 'server', 'peer'] %}
{% for name, config in names.iteritems() %}

{% set service_id = "openvpn_{0}_service".format(name) if map.multi_services else "openvpn_service" %}

{% set config_file = "{0}/openvpn_{1}.conf".format(map.conf_dir, name) if map.multi_services and grains['os_family'] == 'FreeBSD' else "{0}/{1}.conf".format(map.conf_dir, name) %}

# Deploy {{ type }} {{ name }} config files
openvpn_config_{{ type }}_{{ name }}:
  file.managed:
    - name: {{ config_file }}
    - source: salt://openvpn/files/{{ type }}.jinja
    - template: jinja
    - context:
        name: {{ name }}
        config: {{ config }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
      - service: {{ service_id }}

{% if config.ca is defined and config.ca_content is defined %}
# Deploy {{ type }} {{ name }} CA file
openvpn_config_{{ type }}_{{ name }}_ca_file:
  file.managed:
    - name: {{ config.ca }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:ca_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.cert is defined and config.cert_content is defined %}
# Deploy {{ type }} {{ name }} certificate file
openvpn_config_{{ type }}_{{ name }}_cert_file:
  file.managed:
    - name: {{ config.cert }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:cert_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.key is defined and config.key_content is defined %}
# Deploy {{ type }} {{ name }} private key file
openvpn_config_{{ type }}_{{ name }}_key_file:
  file.managed:
    - name: {{ config.key }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:key_content
    - makedirs: True
    - mode: 600
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.crl_verify is defined and config.crl_verify_content is defined %}
# Deploy {{ type }} {{ name }} crl file
openvpn_config_{{ type }}_{{ name }}_crl_verify_file:
  file.managed:
    - name: {{ config.crl_verify }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:crl_verify_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.askpass is defined and config.askpass_content is defined %}
# Deploy {{ type }} {{ name }} private key password file
openvpn_config_{{ type }}_{{ name }}_passwd_file:
  file.managed:
    - name: {{ config.askpass }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:askpass_content
    - makedirs: True
    - mode: 600
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.tls_auth is defined and config.ta_content is defined %}
# Deploy {{ type }} {{ name }} TLS key file
openvpn_config_{{ type }}_{{ name }}_tls_auth_file:
  file.managed:
    - name: {{ config.tls_auth.split()[0] }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:ta_content
    - makedirs: True
    - mode: 600
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.secret is defined and config.secret_content is defined %}
# Deploy {{ type }} {{ name }} shared secret key file
openvpn_config_{{ type }}_{{ name }}_secret_file:
  file.managed:
    - name: {{ config.secret.split()[0] }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:secret_content
    - makedirs: True
    - mode: 600
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.status is defined %}
# Ensure status file exists and is writeable
openvpn_{{ type }}_{{ name }}_status_file:
  file.managed:
    - name: {{ config.status }}
    - makedirs: True
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
{% endif %}

{% if config.log is defined %}
# Ensure log file exists and is writeable
openvpn_{{ type }}_{{ name }}_log_file:
  file.managed:
    - name: {{ config.log }}
    - makedirs: True
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
{% endif %}

{% if config.log_append is defined %}
# Ensure log file exists and is writeable
openvpn_{{ type }}_{{ name }}_log_file_append:
  file.managed:
    - name: {{ config.log_append }}
    - makedirs: True
    - user: {% if config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
{% endif %}

{% if config.client_config_dir is defined %}
# Ensure client config dir exists
openvpn_config_{{ type }}_{{ name }}_client_config_dir:
  file.directory:
    - name: {{ map.conf_dir }}/{{ config.client_config_dir}}
    - makedirs: True

{% for client, client_config in salt['pillar.get']('openvpn:'+type+':'+name+':client_config', {}).iteritems() %}
# Client config for {{ client }}
openvpn_config_{{ type }}_{{ name }}_{{ client }}_client_config:
  file.managed:
    - name: {{ map.conf_dir }}/{{ config.client_config_dir}}/{{ client }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:client_config:{{ client }}
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endfor %}
{% endif %}

{% endfor %}
{% endif %}
{% endfor %}
