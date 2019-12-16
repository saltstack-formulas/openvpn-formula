# frozen_string_literal: true

if os[:family] == 'windows'
  conf_dir = 'C:\\Program Files\\OpenVPN\\config'
  conf_ext = 'ovpn'
else
  conf_dir = '/etc/openvpn'
  conf_ext = 'conf'
end

user = 'root'
group = 'openvpn'

%w[server client].each do |role|
  cfgfile =
    case os[:name]
    when 'debian', 'fedora', 'ubuntu'
      "#{conf_dir}/#{role}/my#{role}1.#{conf_ext}"
    else
      "#{conf_dir}/my#{role}1.#{conf_ext}"
    end

  control "OpenVPN #{role} configuration" do
    title 'should match desired lines'

    describe file(cfgfile) do
      it { should be_file }
      its('content') { should include "# OpenVPN #{role} configuration" }
      its('content') { should include '# Managed by Salt' }
      its('content') { should include 'user' }

      its('content') { should include 'auth-nocache' } if role == 'client'
    end
  end

  control "OpenVPN #{role} configuration file permissions" do
    title 'should be correct'

    only_if('Skip on Windows') { os[:family] != 'windows' }

    describe file(cfgfile) do
      it { should be_owned_by user }
      it { should be_grouped_into group }
      its('mode') { should cmp '0640' }
    end
  end
end
