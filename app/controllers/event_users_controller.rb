class EventUsersController < ApplicationController

	def new
		@event_user = Event_User.new
	end

	def create

	end

	def index
		@event_users = Event_User.all
	end

	def show
		@event_user = Event_User.find(id: params[:id])
	end

	def update
	end

	private
	def event_user_params
		params.require(:event_user)permit(:event_id, :user_id, :datetime, :need_ride, :can_drive, :RSVP)
	end

end
