class ProfessionalvideosController < ApplicationController

	def index
		@professionalvideos = Professionalvideo.all
	end

	def new
		@professionalvideo = Professionalvideo.new
	end

	def show
		@professionalvideo = professionalvideo.find params[:id]
	end
	
	def edit
		@professionalvideo = Professionalvideo.find params[:id]
	end	

	def update
		@professionalvideo = Professionalvideo.find params[:id]
		@professionalvideo.update_attributes professionalvideo_params
		redirect_to professionalvideo_path
	end
	
	def create
		@professionalvideo = Professionalvideo.create professionalvideo_params
		redirect_to professionalvideos_path
	end	

	def destroy
		@professionalvideo = Professionalvideo.find params[:id]
		@professionalvideo.delete
		redirect_to professionalvideos_path
	end	

private
	def blog_params
		params.require(:professionalvideo).permit(
			:title,
			:post,
			:date
			)
	end
end
end
