require 'spec_helper'
describe 'sshd_config' do

  context 'with defaults for all parameters' do
    it { should contain_class('sshd_config') }
  end
end
