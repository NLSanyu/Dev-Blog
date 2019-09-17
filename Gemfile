# frozen_string_literal: true

source 'https://rubygems.org'

gem 'activerecord'
gem 'json'
gem 'pg'
gem 'rake'
gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-activerecord'
gem 'sinatra-contrib', require: 'sinatra/reloader'

group :development do
  gem 'rubocop', '~> 0.74.0', require: false
  gem 'shotgun'
end

group :test do
  gem 'database_cleaner'
  gem 'rack-test'
  gem 'rspec'
end
