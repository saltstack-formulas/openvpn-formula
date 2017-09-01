{% if salt['grains.get']('os_family') == 'Windows' %}

# See https://github.com/OpenVPN/openvpn-gui
{% set reg_values = { 'config_dir': 'REG_SZ',
                      'exe_path': 'REG_SZ',
                      'priority': 'REG_SZ',
                      'ovpn_admin_group': 'REG_SZ',
                      'disable_save_passwords': 'REG_DWORD'} %}

{% for name, data in salt['pillar.get']('openvpn:gui', {}).items() %}
{%   if name in reg_values.keys() %}
openvpn_gui_reg_{{ name }}:
  reg.present:
    - name: HKEY_LOCAL_MACHINE\SOFTWARE\OpenVPN
    - vname: {{ name }}
    - vdata: {{ data }}
    - vtype: {{ reg_values[name] }}
{%   endif %}
{% endfor %}

{% endif %}
