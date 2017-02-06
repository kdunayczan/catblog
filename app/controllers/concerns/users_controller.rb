class UsersController < ApplicationController

	before_action :set_user, only: [:show, :update]

	def index
		@users = User.paginate(page: params[:page], per_page: 5)
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to Cat Blogs #{@user.username}"
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def update
		if @user.update(user_params)
			flash[:success] = "Your account was updated successfully"
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

	def show
		@user_posts = @user.posts.paginate(page: params[:page], per_page: 5)
	end

	private
	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end