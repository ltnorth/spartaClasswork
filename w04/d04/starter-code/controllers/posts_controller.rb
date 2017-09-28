class PostsController < Sinatra::Base

  # Set the root of the app
  set :root, File.join(File.dirname(__FILE__), '..')

  # Set the views directory
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  $posts = [{
    id: 0,
    title: "Post 1",
    body: "This is the first post"
  },
  {
    id: 1,
    title: "Post 2",
    body: "This is the second post"
  },
  {
    id: 2,
    title: "Post 3",
    body: "This is the third post"
  }]

  get '/' do
    @title = "Blog posts"
    @posts = $posts
    erb :'posts/index'
  end

  get '/new'  do
    
    erb :'posts/new'

  end
    
  get '/:id' do
    id = params[:id].to_i
    @post = $posts[id]
    erb :'posts/show'    
  end
    
  post '/' do
    new_post = {
      id: $posts.length,
      title: params[:title],
      body: params[:body]
    }
    $posts.push(new_post)
    redirect "/"
  end
    
  put '/:id'  do
    # gather the id from params
    id = params[:id].to_i

    # get the post object with that id from the dtat store
    post = $posts[id]

    # update the values of the object with data from the request
    post[:title] = params[:title]
    post[:body] = params[:body]

    # save the post back into the data store
    $posts[id] = post

    # redirect
    redirect "/"
  end
    
  delete '/:id'  do
    id = params[:id].to_i
    $posts.select! do |post|
      post[:id] != id
    end
    redirect "/"
  end
    
  get '/:id/edit'  do
    id = params[:id].to_i
    @post = $posts[id]
    erb :'posts/edit'
  end

end