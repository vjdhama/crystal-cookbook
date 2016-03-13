require 'spec_helper'

describe file('/etc/apt/sources.list.d/crystal.list') do
  it { should exist }
  it { should contain "deb http://dist.crystal-lang.org/apt crystal main" }
end

