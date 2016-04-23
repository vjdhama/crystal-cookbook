require 'spec_helper'

describe package('crystal') do
    it { should be_installed }
end

