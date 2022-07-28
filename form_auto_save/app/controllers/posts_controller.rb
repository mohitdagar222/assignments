class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.where(state: "Draft").last
    @post = Post.new unless @post.present?
  end

  # GET /posts/1/edit
  def edit
    
  end

  # POST /posts or /posts.json
  def create
    @post = Post.find_or_create_by(id: params[:post][:id])
    respond_to do |format|
      if @post.update(post_params)
        @post.update(state: "Published")
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def autosave
    @post = Post.find_or_create_by(id: params[:post][:id])
    @post.update(name: params[:post][:name], title: params[:post][:title], content: params[:post][:content])
    respond_to do |format|
      format.json { render json: { id: @post.id } }
    end
  end
  def update
    respond_to do |format|
      if @post.update(post_params)
        @post.update(state: "Published")
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :title, :content)
    end
end
