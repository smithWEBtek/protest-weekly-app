class OrganizationsController < ApplicationController
  
  def new
	  @organization = Organization.new
  end

  def create
  	@organization = Organization.create(id: params[:id])
    if @organization.save
     render :show, notice: "Organization was successfully created."
    else
      render :new
    end
  end

  def show
    @organization = Organization.find_by(id: params[:id])
    render :show
  end

  def index
  	@organizations = Organization.all
  end

  private

  def organization_params
     params.require(:organization).permit(:name, :contact_info, events_attributes: [:name, :cause, :location])
  end
  #doubtful about needing the events params
end
