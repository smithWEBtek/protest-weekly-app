class HappeningsController < ApplicationController
	

	def new
		@happening = Happening.new(user_id: params[:user_id]) && Happening.new(event_id: params[:event_id])
		@user = current_user
	end

	def create
		@happening = Happening.create(happening_params)
		
		if @attend || @car_pool
			@happening.save
			redirect_to event_happenings_path(:event_id)
		else
			redirect_to new_event_happening_url(:event_id)
		end		
	end

	def index
		@happenings = Happening.all
		@happenings = Happening.includes(:event).all
		@happenings = Happening.includes(:user).all

	end

	def show
		@happening = Happening.find_by(id: params[:id])
		@user = User.find_by(id: params[:user_id])
		@event = Event.find_by(id: params[:event_id])
	end

	def edit
		@happening = Happening.find(params[:id])
		if params[:user_id]
	    user = User.find_by(id: params[:user_id])
	    elsif params[:event_id]
	    	event = Event.find_by(id: params[:event_id])
	    else
	      @happening = event.happenings.find_by(id: params[:id])
	      redirect_to event_happenings_path(event), alert: "Event not found." if @happening.nil?
	    end
	   end

	def update
		@happening = Happening.find(params[:id])

		@happening.update(happening_params)

		if @happening.save
			redirect_to @happening
		else
			render :edit
		end
	end

	private

	
	def happening_params
		params.require(:happening).permit(:attend, :can_drive, :need_ride, :event_id, :user_id)
	end

end
