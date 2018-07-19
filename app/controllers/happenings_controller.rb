class HappeningsController < ApplicationController
	

	def new
		@happening = Happening.new(user_id: params[:user_id]) && Happening.new(event_id: params[:event_id])
	end

	def create
		@happening = Happening.create(happening_params)
		
		if @happening.attend || @happening.car_pool
			@happening.save
			redirect_to user_happenings_path(:user_id)
		else
			redirect_to new_user_happening_url(:user_id)
		end		
	end

	def index
		# @happenings = Happening.all 
		# # if params[:user_id]
		# 	@happenings = User.find(params[:user_id]).happenings  
		# # if params[:event_id]
		@happenings = Happening.all
		@happenings = Happening.includes(:event).all
		@happenings = Happening.includes(:user).all
	end

	def show
		@happening = Happening.find_by(id: params[:id])
		@user = User.find_by(id: params[:id])
		@event = Event.find_by(id: params[:id])
	end

	def edit
		if params[:user_id]
	    user = User.find_by(id: params[:user_id])
	    if user.nil?
	      redirect_to users_path
	    else
	      @happening = user.happenings.find_by(id: params[:id])
	      redirect_to user_happenings_path(user), alert: "Event not found." if @happening.nil?
	    end
	    else	
	    @happening = Happening.find(params[:id])
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
