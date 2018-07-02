class EventsController < ApplicationController

  before_action :set_organization

  def new
    @event = @organization.events.build
  end

  def create
    @event = @organization.events.build(events_params)
    
    if @event.save
      redirect_to [@organization, @event], notice: "Event was successfully created."
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
    def set_organization
      @organization = Organization.find(params[:organization_id])
    end

    def event_params
      params.require(:event).permit(:name, :cause, :location, organization_attributes: [:name, :contact_info, :organization_id], event_users_attributes: [:datetime, :need_ride, :can_drive, :RSVP, :user_id])
    end
end
