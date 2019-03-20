class PostsController < ApplicationController
before_action :get_post, only: [:show, :edit, :update]

	def index
		@posts = Post.all
	end

	def show

	end

	def new
		@post = Post.new
		@categories = Category.all
	end

	def create
		@post = Post.create(get_params)
		redirect_to post_path
	end

	def edit

		@categories = Category.all
	end

	def update

		@post.update(get_params)
		redirect_to post_path
	end

	private

	def get_post
		@post = Post.find(params[:id])
	end

	def get_params
		params.require(:post).permit(:title, :description, :post_status, :author_id, :category_id)
	end


end
