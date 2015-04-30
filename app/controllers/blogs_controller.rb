class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = blog.find params[:id]
	end
	
	def edit
		@blog = Blog.find params[:id]
	end	

	def update
		@blog = Blog.find params[:id]
		@blog.update_attributes blog_params
		redirect_to blogs_path
	end
	
	def create
		@blog = Blog.create blog_params
		redirect_to blogs_path
	end	

	def destroy
		@blog = Blog.find params[:id]
		@blog.delete
		redirect_to blogs_path
	end	

private
	def blog_params
		params.require(:blog).permit(
			:title,
			:post,
			:date
			)
	end
end
