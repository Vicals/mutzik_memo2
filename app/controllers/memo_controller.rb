class MemoController < ApplicationController
  def index
    @post = Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/memo/index"
  end

  def new
  end

  def view
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/memo/view/#{params[:id]}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to "/memo/index"
  end
end
