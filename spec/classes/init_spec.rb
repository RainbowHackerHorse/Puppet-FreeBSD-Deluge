require 'spec_helper'
describe 'puppet_freebsd_deluge' do
  context 'with default values for all parameters' do
    it { should contain_class('puppet_freebsd_deluge') }
  end
end
