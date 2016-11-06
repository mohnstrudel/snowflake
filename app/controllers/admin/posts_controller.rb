class Admin::PostsController < AdminController

	before_action :find_post, only: [:edit, :update]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
  			redirect_to admin_posts_path, method: :get
      		flash[:success] = "Успешно создано"
  		else
  			render 'new'
  		end
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to edit_admin_post_path(@post), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render "edit"
		end
	end


	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body, :mainpic, :remove_mainpic, :postcategory_id)
	end
end

