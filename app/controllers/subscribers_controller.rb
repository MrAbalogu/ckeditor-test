class SubscribersController < ApplicationController
  def index
  end

  def create
    @subscriber = Subscriber.create(subscriber_params)
    flash[:notice] = "Email has been added to our list"
    redirect_to posts_path
  end

  def new
    @subscribers = Subscribers.new
  end

  def show
  end

  private 

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end 
end
