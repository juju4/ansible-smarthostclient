require 'serverspec'

# Required by serverspec
set :backend, :exec

describe service('postfix') do
  it { should be_enabled }
end

describe process("master") do
  its(:user) { should eq "root" }
  it { should be_running }
end

describe file('/etc/postfix/smarthost_passwd') do
  it { should be_file }
  its(:content) { should match /login:pass/ }
end

describe file('/etc/postfix/main.cf') do
  it { should be_file }
  its(:content) { should match /relayhost = \[smtp.gmail.com\]:587/ }
end
