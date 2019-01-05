class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit]

#render/respond for js
    
  def new
    @event = Event.new
    @happening = @event.happenings.build
    respond_to do |f|
      f.html { render :new }
      f.json { render json: @event }
    end
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

  def index
    @events = Event.includes(:organization).all
    @events = Event.order(:datetime).current_events
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @events}
    end
  end

  def edit
  end

  def last_added
    @event = Event.last_added
  end

  def past_events
    @events = Event.past_events
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path(:event_id), notice: "Event was successfully updated."
    else
      redirect_to edit_event_path(:event_id)
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
