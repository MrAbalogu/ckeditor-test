class SubscriptionMailer < ApplicationMailer

	def send_email(email)    
	  # @post = post
	  mail(to: email, subject: 'hello')
	end

	def new_subscriber(subscriber)
		@subscriber = subscriber
		mail(to: subscriber.email, subject: "new subscriber")
	end
		
end
