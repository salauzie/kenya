class ClassvideosController < ApplicationController

	def index
		@classvideos = Classvideo.all
	end

	def new
		@classvideo = Classvideo.new
	end
	
	def edit
		@classvideo = Classvideo.find params[:id]
	end	

	def update
		@classvideo = Classvideo.find params[:id]
		@classvideo.update_attributes classvideo_params
		redirect_to classvideos_path
	end
	
	def create
		@classvideo = Classvideo.new(classvideo_params)
		if @classvideo.save
			redirect_to classvideos_path
		else
			render "new"
		end		
	end	

	def destroy
		@classvideo = Classvideo.find params[:id]
		@classvideo.delete
		redirect_to classvideos_path
	end	

private
	def classvideo_params
		params.require(:classvideo).permit(
			:video
			)
	end
end

