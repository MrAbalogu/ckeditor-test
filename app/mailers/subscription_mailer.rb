class SubscriptionMailer < ApplicationMailer

	def new_post(post)   
	  @post = Post.new	 
	  mail(to: "chineduabalogu@yahoo.com", subject: "New post alert")
	end

	def new_subscriber(subscriber)
		@subscriber = subscriber
		mail(to: subscriber.email, subject: "new subscriber")
	end
		
end
