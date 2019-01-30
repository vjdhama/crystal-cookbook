title 'crystal package installed'

control 'crystal-package' do
  impact 1.0
  title 'checks for crystal package'

  describe package('crystal') do
    it { should be_installed }
  end
end
