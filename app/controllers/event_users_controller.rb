class EventUsersController < ApplicationController

	def new
		@event_user = EventUser.new
		@user = User.new
	end

	def create
		@event_user = EventUser.create(event_users_params)
		@event = @event_user.build_event
		@user = @event_user.build_user
	end

	def index
		@event_users = EventUser.all
		@event_users = EventUser.includes(:event).all
		@event_users = EventUser.includes(:user).all
	end

	def show
		@event_user = EventUser.find(id: params[:id])
		@user = User.find(id: params[:id])
	end

	def edit
		@event_user = EventUser.find_by(id: params[:id])
	end

	def update
	end

	private

	def event_user_params
		params.require(:event_user).permit(:need_ride, :can_drive, :RSVP, :event_id, :user_id)
	end

end
