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
    #respond_to do |format|
    #  if @post.save
    #    format.html { redirect_to root_url, notice: 'MiniBlog was successfully created.' }
    #  else
    #    format.html { redirect_to root_url, notice: 'MiniBlog was failed' }
    #    # format.html { render :index }
    #    # format.json { render json: @post.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  def show
  end

private
  def post_param
    params.require(:post).permit(:text)
  end
end
