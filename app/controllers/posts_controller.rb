class PostsController < ApplicationController

  def index
    @posts = Post.all
    if params[:keyword].present?
      @posts = @posts.where("title LIKE '%#{params[:keyword]}%'")
    end
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.image_url = params[:post][:image_url]
    @post.save
    redirect_to posts_url
  end

  def show
    @post = Post.find_by(id: params[:id])
    if @post == nil
      redirect_to posts_url
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.image_url = params[:post][:image_url]
    @post.save
    redirect_to posts_url(@post)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post
      @post.delete
    end
    redirect_to posts_url
  end

end