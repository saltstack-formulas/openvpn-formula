# frozen_string_literal: true

control 'OpenVPN package' do
  title 'should be installed'

  describe package('openvpn') do
    it { should be_installed }
  end
end
