class EventsController < ApplicationController
  # before_action :set_organization
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  
  def new
    @event = Event.new
  	# @organization = @event.organization
  end

  def create
    @event = Event.create(id: params[:id])
    if @event.save
      redirect_to root_path, notice: "Event was successfully created."
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
				redirect_to @event
    else
      render :edit
    end
  end

  def destroy
  end

  private
    # def set_organization
    #   @organization = Organization.find(params[:id])
    # end

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :cause, :location, :organization_id)
    end
end
