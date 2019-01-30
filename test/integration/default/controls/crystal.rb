title 'crystal package installed'

control 'crystal-package' do
  impact 1.0
  title 'checks for crystal package'

  if os.platform?('mac_os_x')
    describe command('/usr/local/bin/crystal -v') do
      its('exit_status') { should eq 0 }
    end
  else
    describe package('crystal') do
      it { should be_installed }
    end
  end
end
