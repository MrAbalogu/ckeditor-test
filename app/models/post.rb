class Post < ActiveRecord::Base
	
	is_impressionable

	validates :title, presence: true
	validates :content, presence: true

	validates :title, length: { minimum:5 }
	validates :content, length: { minimum:20 }

	has_many :youtubes

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  	after_create :send_notification

	def send_notification
		SubscriptionMailer.new_post(self).deliver
	end 

end
