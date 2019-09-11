require 'spec_helper'
require 'rack/test'
require_relative '../app'

RSpec.describe 'Post' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'says welcome' do
    get '/'

    expect(last_response).to be_ok
  end

end