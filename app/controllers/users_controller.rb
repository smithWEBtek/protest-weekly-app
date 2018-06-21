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
		@user = User.find_by(id: params[:id])
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: "User was successfully updated." 
		else
			render :edit 
		end
	end

	def index
	end

	def show
		@user = User.find_by(id: params[:id])
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:name, :password, :cell_phone, :email, :needs_ride, :can_drive)
	end

end
