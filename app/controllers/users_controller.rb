class UsersController < ApplicationController
	before_action :find_user, only: [:show, :edit]

	def new
	  @user = User.new
	  @user.happenings.build
	end

	def create
	  @user = User.create(user_params)
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
	  @user = User.find_by(id: params[:id])
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
	def find_user
	  @user = User.find_by(id: params[:id])
	end

	def user_params
	  params.require(:user).permit(:name, :password, :cell_phone, :email, :UID, :image, events_attributes: [:name, :cause, :location, :datetime], happenings_attributes: [:event_id, :attend, :need_ride, :can_drive, :user_id])
	end

end
