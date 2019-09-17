# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe 'Post' do
  it 'should fetch all posts' do
    get '/posts'
    expect(last_response).to be_ok
  end

  it 'should fetch one post' do
    get '/posts/2'
    expect(last_response).to be_ok
  end
end

describe 'Post validations' do
  it 'invalid without a title' do
    post = Post.new(body: 'This is the body')
    expect(post).to_not be_valid
  end

  it 'invalid without a body' do
    post = Post.new(title: 'This is the title')
    expect(post).to_not be_valid
  end
end
