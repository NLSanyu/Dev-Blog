# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/activerecord'
require_relative './models/post'
require 'sinatra/json'

class App < Sinatra::Base
  get '/' do
    'Welcome to DevBlog!'
  end

  # get posts
  get '/posts' do
    @posts = Post.all
    json @posts
  end

  # get one post
  get '/posts/:id' do
    @post = Post.find_by_id params[:id]
    json @post
  end

  # search posts by title
  get '/posts/search/:title' do
    @title = params[:title]
    @post = Post.find_by title(@title)
    json @post
  end

  # create a post
  post '/posts' do
    new_post = JSON.parse request.body.read
    @post = Post.new(new_post)
    json @post if @post.save
  end

  # update a post
  put '/posts/:id' do
    @post = Post.find_by_id params[:id]
    updates = JSON.parse request.body.read
    puts updates
    if @post.update_attributes(updates)
      json @post
    else
      json @post.errors.messages
    end
  end

  # delete posts
  delete '/posts/:id/delete' do
    @post = Post.find_by_id params[:id]
    @post.destroy
  end
end
