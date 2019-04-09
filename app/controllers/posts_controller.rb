class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	#	byebug
	   @post = Post.find(params[:id])
	   @post.update(coupon_params)
	   redirect_to post_path(@post)
	end

   private

	 def coupon_params
    params.require(:post).permit(:title,:description)
	 end

end
