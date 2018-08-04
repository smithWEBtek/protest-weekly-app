class OrganizationsController < ApplicationController
  
  def new
	  @organization = Organization.new
  end

  def create
  	@organization = Organization.create(organization_params)
    
    if @organization.save
     redirect_to organizations_path, notice: "Organization has been created."
    else
      redirect_to new_organization_path, notice: "Your entry could not be saved. Please try again."
    end
  end

  def show
    @organization = Organization.find_by(id: params[:id])
  end
  
  def edit
  end

  def index
  	@organizations = Organization.all
  end

  def update
  end

  private

  def organization_params
     params.require(:organization).permit(:name, :contact_info, :organization_id, events_attributes: [:name, :cause, :location, :datetime, :event_id])
  end

end
