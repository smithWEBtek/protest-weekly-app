class EventUsersController < ApplicationController

	def new
		@user = User.new
		@event = Event.new
	end

	def create
		@event_user = EventUser.create(event_user_params)
		# @event = @event_user.build_event
		# @user = @event_user.build_user
		if @event_user.attend || @car_pool
			@event_user.save
			redirect_to user_event_user_url(:id)
		else
			redirect_to new_user_event_user_url(:id)
		end		
	end

	def index
		@event_users = EventUser.all
		@event_users = EventUser.includes(:event).all
		@event_users = EventUser.includes(:user).all
	end

	def show
		@event_user = EventUser.find_by(id: params[:id])
		@user = User.find_by(id: params[:id])
		@event = Event.find_by(id: params[:id])
	end

	def edit
		@event_user = EventUser.find_by(id: params[:id])
		@user = User.find_by(id: params[:id])
		@event = Event.find_by(id: params[:id])
	end

	def update
		@event_user = EventUser.find(params[:id])

		@event_user.update(event_user_params)

		if @event_user.save
			redirect_to @event_user
		else
			render :edit
		end
	end

	private

	def event_user_params
		params.require(:event_user).permit(:attend, :can_drive, :need_ride, :event_id, :user_id)
	end

end
