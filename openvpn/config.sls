{% from "openvpn/map.jinja" import map with context %}
{% from "openvpn/map.jinja" import multipart_param with context %}

include:
  - openvpn
  - openvpn.general_config

{% for type, names in salt['pillar.get']('openvpn', {}).items() %}
{% if type in ['client', 'server', 'peer'] %}
{% for name, config in names.items() %}

{% macro _permissions(mode=644, user=None, group=None) %}
{%-  if not grains['os_family'] == 'Windows' -%}
    - mode: {{ mode }}
    - user: {% if not user is none %}{{ user }}{% elif config.user is defined %}{{ config.user }}{% else %}{{ map.user }}{% endif %}
    - group: {% if not group is none %}{{ group }}{% elif config.group is defined %}{{ config.group }}{% else %}{{ map.group }}{% endif %}
{%-  endif -%}
{% endmacro %}

{% set service_id = "openvpn_{0}_service".format(name) if map.multi_services else "openvpn_service" %}

{% set config_dir = config.conf_dir if config.conf_dir is defined else map.conf_dir %}

{% set config_file = "{0}/openvpn_{1}.conf".format(config_dir, name) if map.multi_services and grains['os_family'] == 'FreeBSD' else "{0}/{1}.{2}".format(config_dir, name, map.conf_ext) %}

# Deploy {{ type }} {{ name }} config files
openvpn_config_{{ type }}_{{ name }}:
  file.managed:
    - name: {{ config_file }}
    {{ _permissions(640, 'root') }}
    - source:
      - salt://openvpn/files/{{ type }}.jinja
      - salt://openvpn/files/common_opts.jinja  # make available to salt-ssh
        # see https://github.com/saltstack/salt/issues/21370#issuecomment-226868952
    - template: jinja
    - context:
        name: {{ name }}
        type: {{ type }}
        user: {{ map.user }}
        group: {{ map.group }}
    - watch_in:
      - service: {{ service_id }}

{% if config.ca is defined and config.ca_content is defined %}
# Deploy {{ type }} {{ name }} CA file
openvpn_config_{{ type }}_{{ name }}_ca_file:
  file.managed:
    - name: {{ config.ca }}
    {{ _permissions(640, 'root') }}
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
    {{ _permissions(640, 'root') }}
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
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:key_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.crl_verify is defined and config.crl_verify_content is defined %}
# Deploy {{ type }} {{ name }} crl file
openvpn_config_{{ type }}_{{ name }}_crl_verify_file:
  file.managed:
    - name: {{ config.crl_verify }}
    {{ _permissions(640, 'root') }}
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
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:askpass_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.ta_content is defined and config.tls_crypt is defined %}
# Deploy {{ type }} {{ name }} TLS key file
openvpn_config_{{ type }}_{{ name }}_tls_crypt_file:
  file.managed:
    - name: {{ config.tls_crypt }}
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:ta_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% elif config.ta_content is defined and config.tls_auth is defined %}
# Deploy {{ type }} {{ name }} TLS key file
openvpn_config_{{ type }}_{{ name }}_tls_auth_file:
  file.managed:
    - name: {{ multipart_param(config.tls_auth, 0) }}
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:ta_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.secret is defined and config.secret_content is defined %}
# Deploy {{ type }} {{ name }} shared secret key file
openvpn_config_{{ type }}_{{ name }}_secret_file:
  file.managed:
    - name: {{ multipart_param(config.secret, 0) }}
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:secret_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.auth_user_pass is defined and config.auth_user_pass_content is defined %}
# Deploy {{ type }} {{ name }} auth_user_pass file
openvpn_config_{{ type }}_{{ name }}_auth_user_pass_file:
  file.managed:
    - name: {{ config.auth_user_pass }}
    {{ _permissions(600, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:auth_user_pass_content
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endif %}

{% if config.status is defined %}
# Ensure status file exists and is writeable
openvpn_{{ type }}_{{ name }}_status_file:
  file.managed:
    - name: {{ config.status }}
    - makedirs: True
    {{ _permissions(600, 'root', 0) }}  # different group names on FreeBSD and Debian/Ubuntu
    - watch_in:
{%- if map.multi_services %}
      - service: openvpn_{{name}}_service
{%- else %}
      - service: openvpn_service
{%- endif %}
{% endif %}

{% if config.log is defined %}
# Ensure log file exists and is writeable
openvpn_{{ type }}_{{ name }}_log_file:
  file.managed:
    - name: {{ config.log }}
    - makedirs: True
    {{ _permissions(640) }}
{% endif %}

{% if config.log_append is defined %}
# Ensure log file exists and is writeable
openvpn_{{ type }}_{{ name }}_log_file_append:
  file.managed:
    - name: {{ config.log_append }}
    - makedirs: True
    {{ _permissions(640) }}
{% endif %}

{% if config.client_config_dir is defined %}
# Ensure client config dir exists
openvpn_config_{{ type }}_{{ name }}_client_config_dir:
  file.directory:
    - name: {{ config_dir }}/{{ config.client_config_dir}}
    {{ _permissions(750, 'root') }}
    - makedirs: True
    - watch_in:
{%- if map.multi_services %}
      - service: openvpn_{{name}}_service
{%- else %}
      - service: openvpn_service
{%- endif %}

{% for client, client_config in salt['pillar.get']('openvpn:'+type+':'+name+':client_config', {}).items() %}
# Client config for {{ client }}
openvpn_config_{{ type }}_{{ name }}_{{ client }}_client_config:
  file.managed:
    - name: {{ config_dir }}/{{ config.client_config_dir}}/{{ client }}
    {{ _permissions(640, 'root') }}
    - contents_pillar: openvpn:{{ type }}:{{ name }}:client_config:{{ client }}
    - makedirs: True
    - watch_in:
      - service: {{ service_id }}
{% endfor %}
{% endif %}

{% endfor %}
{% endif %}
{% endfor %}
