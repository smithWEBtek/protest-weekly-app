class HappeningsController < ApplicationController
	before_action :current_event, only: [:new, :create, :edit, :update]
	
#render/respond to for js
	

	def new
		if !current_user
			flash[:message] = 'Please sign up, or log in.'
			redirect_to root_path
		else
			@user = current_user
			@event = current_event
			@happening = Happening.new
		end
	end

	def create
	  @happening = Happening.new(happening_params)
	  @happening.user = current_user
	  @happening.event = current_event
	 
	   	  
	  	if @happening.attend 
	  	   @happening.save!
		   redirect_to user_happenings_url(:user_id, :happening_id) 
		else 
		flash[:message] ='There was a problem registering you for this event. Please try again.'
		redirect_to events_url  
	  	end		
	end

	def index
	  if current_user
	  @happenings = current_user.happenings 
	  render :layout => false
	  end
	end

	def show
	  @happening = Happening.find_by(id: params[:id])
	  @user = User.find_by(id: params[:user_id])
	  @event = Event.find_by(id: params[:event_id]).order(:datetime).current_events
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
  	  params.require(:happening).permit(:event_id, :user_id, :attend, :can_drive, :need_ride, :id)
	end

	def current_event
    	@current_event ||= Event.find_by(id: params[:event_id])
  	end

	
end
