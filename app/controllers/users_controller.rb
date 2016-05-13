class UsersController < ApplicationController

  def index
    @users = User.all
    if @users == nil
      redirect_to datasets_url
    end
  end

  def create
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user == nil
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