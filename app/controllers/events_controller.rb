class EventsController < ApplicationController
    before_action :require_logged_in

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
        
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
  	@event = Event.find_by(id: params[:id])
  end

  def index
    @events = Event.includes(:organization).all
  end

  def edit
    @event = Event.find_by(id: params[:id])
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
   
    def event_params
      params.require(:event).permit(:name, :cause, :location, :datetime, :organization_id, happenings_attributes: [:attend, :need_ride, :can_drive, :user_id])
    end
end
