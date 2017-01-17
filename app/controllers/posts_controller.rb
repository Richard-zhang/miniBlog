class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_param)
    if @post.save
      redirect_to root_url
    else
      redirect_to root_url, error: @post.errors.full_messages.join("<br/>")
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_url, notice: "The post has been deleted"
  end


  def show
    @post = Post.find(params[:id])
  end

private
  def post_param
    params.require(:post).permit(:text)
  end
end
