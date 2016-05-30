class PostsController < ApplicationController

  before_action :find_post, :except => [:index, :create, :new]

  def find_post
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.all
    if params[:keyword].present?
      @posts = @posts.where("title LIKE ? OR content LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
      if @posts.count == 0
        @posts = Post.all
      end
    end
    @posts = @posts.paginate(:page => params[:page], :per_page => 10)
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.image_url = params[:post][:image_url]
    @post.user_id = session[:user_id]
    success = @post.save

    if success
      sources = params[:post][:sources]
      sources.each do |source|
        if source != ""
          @source = Source.new
          @source.post_id = @post.id
          @source.dataset_id = source.to_i
          @source.save
        end
      end
      redirect_to posts_url
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to new_post_url
    end

  end

  def show
    if @post == nil or @post.user == nil
      redirect_to posts_url
    end
  end

  def new
    if not session[:user_id]
      redirect_to login_url
    end
    @post = Post.new
  end

  def edit
    if not session[:user_id] or @post.user.id != session[:user_id].to_i
      redirect_to login_url
    end
  end

  def update
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.image_url = params[:post][:image_url]
    success = @post.save
    if success
      old_sources = Source.where(post_id: @post.id).all
      old_sources.each do |source|
        source.delete
      end
      sources = params[:post][:sources]
      sources.each do |source|
        if source != ""
          @source = Source.new
          @source.post_id = @post.id
          @source.dataset_id = source.to_i
          @source.save
        end
      end
      redirect_to posts_url(@post)
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    if not session[:user_id] or @post.user.id != session[:user_id].to_i
      redirect_to login_url
    end
    if @post
      @post.delete
    end
    redirect_to posts_url
  end

end