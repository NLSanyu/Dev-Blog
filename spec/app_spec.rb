require File.expand_path '../spec_helper.rb', __FILE__

RSpec.describe 'App' do
    
  it 'should say welcome' do
    get '/'
    expect(last_response).to be_ok
  end

end