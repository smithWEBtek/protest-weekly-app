class UsersController < ApplicationController

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
		@user = User.find_by(id: params[:id])
		if @user.update(user_params)
			redirect_to @user, notice: "User was successfully updated." 
		else
			render :edit 
		end
	end

	def show
		@user = User.find_by(id: params[:id])
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:name, :password, :cell_phone, :email, event_users_attributes: [:event_id, :datetime, :RSVP, :need_ride, :can_drive])
	end

end
