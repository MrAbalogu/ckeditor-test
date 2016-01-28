class SubscribersController < ApplicationController
  def index
  end

  def create
  	@subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
    	flash[:notice] = "Email has been added to our list"
    	redirect_to posts_path
    else 
      flash[:notice] = "Invalid Email address"
      redirect_to posts_path
    end  
  end

  def new
  end

  def show
  end

  private 

  def subscriber_params
  	params.require(:subscriber).permit(:email)
  end	
end
