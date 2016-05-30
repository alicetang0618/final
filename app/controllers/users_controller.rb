class UsersController < ApplicationController

  before_action :find_user, :except => [:index, :create, :new]

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.paginate(:page => params[:page], :per_page => 30)
    if @users == nil
      redirect_to root_url
    end
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.description = params[:user][:description]
    success = @user.save
    if success
      redirect_to root_url
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to new_user_url
    end
  end

  def show
    if !@user
      redirect_to root_url
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.description = params[:user][:description]
    success = @user.save
    if success
      redirect_to root_url
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to edit_user_url(@user)
    end
  end

  def destroy
    if @user
      @user.delete
    end
    reset_session
    redirect_to root_url
  end

end