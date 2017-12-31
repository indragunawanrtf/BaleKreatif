class PostsController < ApplicationController
	before_action :find_post, only: [:show]

	def index
		if params[:category].blank?
			@posts = Post.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@posts = Post.where(:category_id => @category_id).order("created_at DESC")
		end
	end

	def show
		
	end

	private

		def find_post
			@post = Post.find(params[:id])
		end
end