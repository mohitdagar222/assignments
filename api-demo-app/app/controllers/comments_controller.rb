class CommentsController < ApplicationController

  skip_before_action :verify_authenticity_token
  require 'rest-client'

  def index
    response = RestClient.get "https://jsonplaceholder.typicode.com/posts/#{params[:post_id]}/comments"
    render json: response.body, status: response.code
  end

  def create
    all_params ={
      "name": "#{params[:name]}",
      "body": "#{params[:body]}",
      "email": "#{params[:post_id]}"
    }
    response = RestClient.post "https://jsonplaceholder.typicode.com/posts/#{params[:post_id]}/comments", all_params
    post = JSON.parse(response.body)
    @post = Post.find_by(id: post["postId"])
    @post.comments.create(name: post["name"], body: post["body"], email: post["email"])
    render json: response.body, status: response.code

  end

end
