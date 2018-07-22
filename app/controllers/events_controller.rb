class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit]
    # before_action :require_logged_in

  def new
    @event = Event.new
    @event.happenings.build
  end

  def create
    @organization = Organization.create(params[:organization_id])
    @event = Event.create(event_params)
        
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
  end

  def upcoming_event
    @event = Event.upcoming_event
  end

  def expected_attendees
    @event = Event.expected_attendees
  end

  def index
    @events = Event.includes(:organization).all
  end

  def edit
  end

  def update
    @event = Event.find(params[:id])
  	if @event.update(event_params)
				redirect_to @event, notice: "Event was successfully updated."
    else
      redirect_to events_path
    end
  end

  def destroy
  end

  private

    def find_event
      @event = Event.find_by(id: params[:id])
    end


    def event_params
      params.require(:event).permit(:name, :cause, :location, :datetime, :organization_id, happenings_attributes: [:attend, :need_ride, :can_drive, :user_id, :event_id])
    end
end
