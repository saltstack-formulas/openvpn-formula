# Overide by OS
user = 'root'
group = 'openvpn'

control 'OpenVPN server configuration' do
  title 'should match desired lines'

  cfgfile =
    case os[:name]
    when 'debian'
      '/etc/openvpn/server/myserver1.conf'
    when 'fedora'
      '/etc/openvpn/server/myserver1.conf'
    when 'ubuntu'
      '/etc/openvpn/server/myserver1.conf'
    else
      '/etc/openvpn/myserver1.conf'
    end

  describe file(cfgfile) do
    it { should be_file }
    it { should be_owned_by user }
    it { should be_grouped_into group }
    its('mode') { should cmp '0640' }
    its('content') { should include '# OpenVPN server configuration' }
    its('content') { should include '# Managed by Salt' }
    its('content') { should include 'user' }
  end
end

control 'OpenVPN client configuration' do
  title 'should match desired lines'

  cfgfile =
    case os[:name]
    when 'debian'
      '/etc/openvpn/client/myclient1.conf'
    when 'fedora'
      '/etc/openvpn/client/myclient1.conf'
    when 'ubuntu'
      '/etc/openvpn/client/myclient1.conf'
    else
      '/etc/openvpn/myclient1.conf'
    end

  describe file(cfgfile) do
    it { should be_file }
    it { should be_owned_by user }
    it { should be_grouped_into group }
    its('mode') { should cmp '0640' }
    its('content') { should include '# OpenVPN client configuration' }
    its('content') { should include '# Managed by Salt' }
    its('content') { should include 'user' }
  end
end
