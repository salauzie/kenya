class Classvideo < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}
	has_attached_file :video, :styles => { :medium => "300x300>", :thumb => "100x100>"}
	validates_attachment_content_type :image, :content_type => ["video/mp4", "image/jpg", "image/jpeg", "image/png", "image/gif"]
end
