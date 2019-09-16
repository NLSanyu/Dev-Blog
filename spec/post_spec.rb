require File.expand_path '../spec_helper.rb', __FILE__

RSpec.describe 'Post' do
    
  it 'should fetch all posts' do
    get '/posts'
    expect(last_response).to be_ok
  end

  it 'should fetch one post' do
    get '/posts/2'
    expect(last_response).to be_ok
  end

end