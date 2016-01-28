class SubscriptionMailer < ApplicationMailer

	def new_subscriber(subscriber)
		@subscriber = subscriber
		mail(to: subscriber.email, subject: "new subscriber")
	end
		
end
