class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    byebug
    if post.save
      redirect_to posts_path
    else

    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :detail)
  end
end
