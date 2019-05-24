# Overide by OS
user = 'root'
group = 'openvpn'

control 'OpenVPN server configuration' do
  title 'should match desired lines'

  cfgfile = case os[:name]
  when 'fedora' then '/etc/openvpn/server/myserver1.conf'
  else '/etc/openvpn/myserver1.conf'
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

  describe command('ls -l /etc/openvpn/myserver1.conf') do
    its('stdout') { should include " #{user} #{group} " }
  end
end

control 'OpenVPN client configuration' do
  title 'should match desired lines'

  cfgfile = case os[:name]
  when 'fedora' then '/etc/openvpn/client/myclient1.conf'
  else '/etc/openvpn/myclient1.conf'
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

  describe command('ls -l /etc/openvpn/myclient1.conf') do
    its('stdout') { should include " #{user} #{group} " }
  end
end
