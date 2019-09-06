class DevBlog < Sinatra::Base

    configure :development do
        register Sinatra::Reloader
    end    

    get '/' do
      "Welcome to Dev Blog!"
    end

    get '/posts' do
        posts = Post.all
    end

    get '/posts/:id' do
        post = Post.find_by_id(id).to_json
        post.body
    end
  end