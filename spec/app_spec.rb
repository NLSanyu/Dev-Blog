require 'spec_helper'
require 'rack/test'
require_relative '../app'

RSpec.describe 'App' do
  include Rack::Test::Methods

  def app
    App
  end

  it 'should say welcome' do
    get '/'
    expect(last_response).to be_ok
  end

end