class Classvideo < ActiveRecord::Base
	belongs_to :user
	# has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}
	has_attached_file :video, :styles => { 
		:medium => {:geometry => "640x480", :format => 'flv'},
		:thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
	}, :processors => [:transcoder]
	# validates_attachment_content_type :image,  :content_type => [ "image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :video, :content_type => ["video/mp4", "video.mov", "video/mpeg","video/mpeg4", "image/jpg", "image/jpeg"]
end
