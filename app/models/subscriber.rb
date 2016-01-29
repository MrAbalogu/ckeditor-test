class Subscriber < ActiveRecord::Base
	belongs_to :post

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
		                   format: { with: VALID_EMAIL_REGEX },
		                 uniqueness: { case_sensitive: false }

	after_create :send_notification

	def send_notification
		SubscriptionMailer.new_subscriber(self).deliver
	end 		                 
	 	
end
