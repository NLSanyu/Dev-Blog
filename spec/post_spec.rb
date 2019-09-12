require 'spec_helper'
require 'rack/test'
require_relative '../app'

# ENV['RACK_ENV'] = 'test'

RSpec.describe 'Post' do
  include Rack::Test::Methods

  def app
    App
  end

  it 'should fetch all posts' do
    get '/posts'
    expect(last_response).to be_ok
  end

  it 'should fetch one post' do
    get '/posts/2'
    expect(last_response).to be_ok
  end

end