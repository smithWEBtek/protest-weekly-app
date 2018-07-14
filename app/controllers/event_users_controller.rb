class EventUsersController < ApplicationController
	before_action :find_event_user, only: [:show, :edit]
	before_action :find_user, only: [:show, :edit]
	before_action :find_event, only: [:show, :edit]

	def new
		@event_user = EventUser.new
		@users = User.all
		@events = Event.all
	end

	def create

		# @event_user = @user.event_users.build(event_user_params)

		@event = Event.all
		@user = User.all
		@event_user = EventUser.create(event_user_params)
		# byebug
		if @event_user.attend || EventUser.car_pool
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
	end

	def edit
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

	def find_event_user
		@event_user = EventUser.find_by(id: params[:id])
	end

	def find_user
		@user = User.find_by(id: params[:id])
	end

	def find_event
		@event = Event.find_by(id: params[:id])
	end

	def event_user_params
		params.require(:event_user).permit(:attend, :can_drive, :need_ride, event_attributes: [:event_id, :name, :cause, :location, :datetime], user_attributes: [:user_id, :name, :password, :cell_phone, :email, :UID, :image])
	end

end
