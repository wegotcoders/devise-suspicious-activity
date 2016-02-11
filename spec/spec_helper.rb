require 'rails/all'
require 'action_view'
require 'rspec/rails'
require 'simplecov'
require 'pry'
require 'devise-suspicious-activity'
require 'devise-suspicious-activity/spec_helpers'


ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../spec/sandbox/config/environment",  __FILE__)

module SimpleCov::Configuration
  def clean_filters
    @filters = []
  end
end

SimpleCov.configure do
  clean_filters
  load_adapter 'test_frameworks'
end

ENV["COVERAGE"] && SimpleCov.start do
  add_filter "/.rvm/"
end
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))



# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# ENV["RAILS_ROOT"] ||= File.dirname(__FILE__) + "../sandbox"

RSpec.configure do |config|

end

run Rails::Application.run!
