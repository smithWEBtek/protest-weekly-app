class EventsController < ApplicationController

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create
  end

  def show
  	@event = Event.find_by(:id params[:id])
  end

  def update
  	event = Event.find_by(id: params[:id])
		event.update(event_params)
		redirect_to event_path(event)
  end

  def destroy
  	
  end
end
