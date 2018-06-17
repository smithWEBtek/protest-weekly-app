class UsersController < ApplicationController

	#before: logged_in

	def new
	end

	def create
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
