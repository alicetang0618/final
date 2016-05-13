class PostsController < ApplicationController

  def index

    @posts = Post.all

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @posts
      end
      format.xml do
        render xml: @posts
      end
    end

  end

  def create
  end

  def show
    @post = Post.find_by(id: params[:id])
    if @post == nil
      redirect_to datasets_url
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end