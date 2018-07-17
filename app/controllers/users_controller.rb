class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :find_user, only: [:show, :edit]

	def new
		@user = User.new
		# @user.happenings.build
		# @user = current_user
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id 
			redirect_to @user
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: "User was successfully updated." 
		else
			render :edit 
		end
	end

	def show
	end

	
	def destroy
	end

	private
	def set_user
		@user = User.find(params[:id])
	end

	def find_user
		@user = User.find_by(id: params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :password, :cell_phone, :email, :UID, :image, events_attributes: [:name, :cause, :location, :datetime], happenings_attributes: [:event_id, :attend, :need_ride, :can_drive])
	end

end
