$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rubygems'
require 'rspec'
require 'webmock/rspec'
require 'kuby'

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /r=a.version\z/).to_return(status: 200, body: '{"r":"1.4.6.0"}')
  end
end
