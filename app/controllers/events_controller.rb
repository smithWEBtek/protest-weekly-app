class EventsController < ApplicationController

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create
  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
    @event = Event.all
  end

  def update
  	event = Event.find(params[:id])
		event.update(event_params)
		redirect_to event_path(event)
  end

  def destroy
  end

  private
    def event_params
      params.require(:event).permit(:name, :cause, :datetime, organizations_attributes: [:name, :contact_info], venues_attributes: [:name, :street_address, :city, :state])
    end
end
