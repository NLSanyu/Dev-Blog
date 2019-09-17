# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'rspec'
require 'database_cleaner'

require File.expand_path '../app.rb', __dir__

module RSpecMixin
  include Rack::Test::Methods
  def app
    App
  end
end

RSpec.configure { |c| c.include RSpecMixin }

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end
