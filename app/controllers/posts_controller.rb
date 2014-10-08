class PostsController < ApplicationController
  before_action :signed_in_user, except: [:show, :index]

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def index
    @posts = Post.paginate(page: params[:page], per_page: 20)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:body, :subject, :user_id)
  end
end
