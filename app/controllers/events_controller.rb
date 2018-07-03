class EventsController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    
    if @event.save
      redirect_to :show, notice: "Event was successfully created."
    else
      render :new
    end
  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def update
  	@event = Event.find(params[:id])
    if @event.update(event_params)
				redirect_to @event, notice: "Event was successfully updated."
    else
      render :edit
    end
  end

  def destroy
  end

  private
    # def set_event
    #   @event = Event.find(event_params)
    # end

    def event_params
      params.require(:event).permit(:name, :cause, :location, organization_attributes: [:name, :contact_info, :organization_id], event_users_attributes: [:datetime, :RSVP, :need_ride, :can_drive, :user_id])
    end
end
