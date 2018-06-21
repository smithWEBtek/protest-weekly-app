class UsersController < ApplicationController

	#before: logged_in

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def index
	end

	def show
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:name, :password, :cell_phone, :email, :ride, :drive)
	end

end
