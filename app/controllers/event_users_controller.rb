class Event_UsersController < ApplicationController

	def new
		@event_user = Event_User.new
	end

	def show
		@event_user = Event_User.find(id: params[:id])
	end

	

end
