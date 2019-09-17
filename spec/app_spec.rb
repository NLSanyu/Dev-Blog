# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe 'App' do
  it 'should say welcome' do
    get '/'
    expect(last_response).to be_ok
  end
end
