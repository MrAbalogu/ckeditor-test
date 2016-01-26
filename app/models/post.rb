class Post < ActiveRecord::Base

	validates :title, presence: true
	validates :content, presence: true

	validates :title, length: { minimum:5 }
	validates :content, length: { minimum:20 }

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
