require 'chefspec'

describe 'chef-haproxy::_init' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'chef-haproxy::_init' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
