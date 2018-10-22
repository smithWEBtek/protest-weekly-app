class HappeningsController < ApplicationController
	#user has one active happening per event
	#user can edit happening
	#user can cancel happening
	#user receives confirmation of happening on show page
	#user can see all of their happenings after login (user.show)

	def new
	  @happening = Happening.new(user_id: params[:user_id]) && Happening.new(event_id: params[:event_id])
	end

	def create
	  @happening = Happening.create(happening_params)
	  # binding.pry
	  # @happening = current_user.happenings.create
	  @happening.user = current_user
	  @happening.event = current_event
	  binding.pry
	  
	  	if @happening.attend || @happening.need_ride || @happening.can_drive 
		   @happening.save!
		   redirect_to user_happening_url(:user_id, :happening_id)
		else 
			render json: { status: 'error', message: "User has already signed up for this event. Please choose a new event to attend." }
			redirect_to new_event_happening_url(:event_id)
		end		
	end

	def index
	  @happenings = Happening.all
	  @happenings = Happening.includes(:event, :user).all
	  render json: @happenings, status: 200
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
  	  params.require(:happening).permit(:event_id, :user_id, :attend, :can_drive, :need_ride)
	end

end
