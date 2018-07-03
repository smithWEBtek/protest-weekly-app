class OrganizationsController < ApplicationController
  
  def new
	  @organization = Organization.new
  end

  def create
  	@organization = Organization.create(organization_params)
    # @events = @organization.events

    if @organization.save
     redirect_to :index, notice: "Organization has been created."
    else
      render :new, notice: "Your entry could not be saved. Please try again."
    end
  end

  def show
    @organization = Organization.find_by(id: params[:id])
  end
  
  def index
  	@organizations = Organization.all
  end

  private

  def organization_params
     params.require(:organization).permit(:name, :contact_info, events_attributes: [:name, :cause, :location, :event_id])
  end

end
