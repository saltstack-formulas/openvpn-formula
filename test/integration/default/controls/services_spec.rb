# frozen_string_literal: true

control 'OpenVPN service' do
  impact 0.5
  title 'should be running and enabled'

  require 'rspec/retry'

  log_dir = '/var/log/openvpn/'

  if os[:name] == 'centos' && os[:release].start_with?('6')
    services = ['openvpn']
  elsif os[:family] == 'windows'
    log_dir = 'C:\\Program Files\\OpenVPN\\log\\'
    services = ['OpenVPNService']
  else
    services = []
    %w[server client].each do |role|
      prefix =
        case os[:name]
        when 'debian', 'fedora', 'ubuntu'
          "openvpn-#{role}"
        else
          'openvpn'
        end
      services << "#{prefix}@my#{role}1.service"
    end
  end

  services.each do |service|
    describe service(service) do
      it { should be_installed }
      it { should be_enabled }
      it { should be_running }
    end
  end

  %w[server client].each do |role|
    logfile = "#{log_dir}my#{role}1.log"
    describe 'Initialization' do
      it 'should be completed', retry: 60, retry_wait: 1 do
        expect(file(logfile).content).to include 'Initialization Sequence Completed'
      end
    end
  end
end
