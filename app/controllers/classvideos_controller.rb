class ClassvideosController < ApplicationController

	def index
		@classvideos = Classvideo.all
	end

	def new
		@classvideo = ClassvideoClassvideo.new
	end

	def show
		@classvideoclassvideo = classvideoclassvideo.find params[:id]
	end
	
	def edit
		@classvideoclassvideo = ClassvideoClassvideo.find params[:id]
	end	

	def update
		@classvideoclassvideo = Classvideo.find params[:id]
		@classvideoclassvideo.update_attributes classvideo_params
		redirect_to classvideos_path
	end
	
	def create
		@classvideo = Classvideo.create blog_params
		redirect_to blogs_path
	end	

	def destroy
		@classvideo = Classvideo.find params[:id]
		@classvideo.delete
		redirect_to classvideos_path
	end	

private
	def classvideo_params
		params.require(:classvideo).permit(
			:title,
			:post,
			:date
			)
	end
end
end
