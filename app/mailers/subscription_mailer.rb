class SubscriptionMailer < ApplicationMailer
	
	def new_post(post, subscriber)  
		subscriber = Subscriber.all
		@post = Post.last 	 
		mail(to: subscriber.pluck(:email) , subject: "New post alert")
	end	

	def new_subscriber(subscriber)
		@subscriber = subscriber
		mail(to: subscriber.email, subject: "new subscriber")
	end
		
end
