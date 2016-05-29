class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user and user.authenticate(params[:password])
      session["user_id"] = user.id
      flash["notice"] = "Welcome back, #{user.name}"
      redirect_to root_url
      return
    else
      redirect_to login_url, notice: "Invalid email or password"
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

end