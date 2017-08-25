{% set reg_values = {'disable_save_passwords': 'something'} %}

{% for name, data in salt['pillar.get']('openvpn:gui', {}).items() %}
{%   if name in reg_values.keys() %}
openvpn_gui_reg_{{ name }}:
  reg.present:
    - name: HKEY_LOCAL_MACHINE\SOFTWARE\OpenVPN
    - vname: {{ name }}
    - vdata: {{ data }}
    - vtype: REG_DWORD
{%   endif %}
{% endfor %}
