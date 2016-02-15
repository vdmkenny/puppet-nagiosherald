require 'spec_helper'
describe 'nagiosherald' do

  context 'with defaults for all parameters' do
    it { should contain_class('nagiosherald') }
  end
end
