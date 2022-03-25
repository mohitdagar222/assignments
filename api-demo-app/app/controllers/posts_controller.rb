class PostsController < ApplicationController
  def index
    posts = Post.all 
    render json:{data: posts}
  end
  def create
    Post.create(title: , body: )
  end
end
