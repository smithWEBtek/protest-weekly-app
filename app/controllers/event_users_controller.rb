class EventUsersController < ApplicationController

	def new
		@event_user = Event_User.new
	end

	def create
		@event_user = Event_User.create
		@event = @event_user.build_event
		@user = @event_user.build_user
	end

	def index
		@event_users = Event_User.all
		@event_users = Event_User.includes(:event).all
		@event_users = Event_User.includes(:user).all
	end

	def show
		@event_user = Event_User.find(id: params[:id])
	end

	def update
	end

	private

	def event_user_params
		params.require(:event_user)permit(:need_ride, :can_drive, :RSVP, :event_id, :user_id)
	end

end
