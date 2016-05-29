class SubscriptionsController < ApplicationController

  def create
    @subscription = Subscription.new
    @subscription.publisher_id = params[:id]
    @subscription.subscriber_id = session[:user_id]
    @subscription.save
    redirect_to subscriptions_url
  end

  def index
    if not session[:user_id]
      redirect_to login_url
    end
    @subscriptions = Subscription.where(subscriber_id=session[:user_id])
    @subscriptions = @subscriptions.paginate(:page => params[:page], :per_page => 10)
  end

  def destroy
    @sub = Subscription.find_by(id: params[:id])
    if @sub
      @sub.delete
    end
    redirect_to subscriptions_url
  end

end