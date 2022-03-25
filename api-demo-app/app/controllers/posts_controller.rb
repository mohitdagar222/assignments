class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  require 'rest-client'
  def index
    response = RestClient.get 'https://jsonplaceholder.typicode.com/posts'
    render json: response.body, status: response.code
  end
  def create
    all_params ={
      "title": "#{params[:title]}",
      "body": "#{params[:body]}",
      "userId": "#{params[:user_id]}"
    }
    response = RestClient.post 'https://jsonplaceholder.typicode.com/posts', all_params
    post = JSON.parse(response.body)
    Post.create(title: post["title"], body: post["body"], user_id: post["userId"])
    render json: response.body, status: response.code

  end

  def show
    response = RestClient.get "https://jsonplaceholder.typicode.com/posts/#{params[:id]}"
    render json: response.body, status: response.code
  end

  def update
    all_params ={
      "title": "#{params[:title]}",
      "body": "#{params[:body]}",
      "userId": "#{params[:user_id]}"

    }
    response = RestClient.patch "https://jsonplaceholder.typicode.com/posts/#{params[:id]}", all_params
    post = JSON.parse(response.body)
    @post = Post.find_by(id: params[:id])
    @post.update(title: post["title"], body: post["body"], user_id: post["userId"]) if @post.present?
    render json: response.body, status: response.code
  end

  def destroy
    response = RestClient.delete "https://jsonplaceholder.typicode.com/posts/#{params[:id]}"
    post = JSON.parse(response.body)
    debugger
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: response.body, status: response.code
  end

end
