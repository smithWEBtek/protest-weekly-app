class EventUsersController < ApplicationController

	def new
		@event_user = Event_User.new
	end

	def show
		@event_user = Event_User.find(id: params[:id])
	end

	private
	def event_user_params
		params.require(:event_user)permit(:event_id, :user_id)
	end

end
