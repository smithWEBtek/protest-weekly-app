class EventsController < ApplicationController
    before_action :set_organization

  def new
    @event = @organization.events.build
  end

  def create
    @organization = Organization.create(params[:organization_id])
    @event = Event.create(event_params)
        
    if @event.save
      redirect_to events_path
    elsif 
      @organization.save
      @event = @organization.events.create
      
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

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end
   
    def event_params
      params.require(:event).permit(:name, :cause, :location, :datetime, :organization_id, event_users_attributes: [:attend, :need_ride, :can_drive, :user_id])
    end
end
