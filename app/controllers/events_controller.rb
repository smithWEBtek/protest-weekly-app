class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  def new
  	@event = Event.new
  end


  def create
    @event = current_user.events.build(params[:event])
    if @event.save
      redirect_to root_path, notice: "Event was successfully created."
    else
      render '/'
    end
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
