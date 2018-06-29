class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create(event_params)
    @event.save
    redirect_to event_path(id: params[:id]), notice: "Event was successfully created."
  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
    @event = Event.all
  end

  def update
  	@event = Event.find(params[:id])
    if @event.update(event_params)
				redirect_to @event
    else
      render :edit
    end
  end

  def destroy
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :cause, :location, :organization_id)
    end
end
