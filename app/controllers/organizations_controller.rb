class OrganizationsController < ApplicationController
  
  def new
	  @organization = Organization.new
    @organization.events.build
  end

  def create
  	@organization = Organization.create(id: params[:id])
    @organization.save
     render :show
  end

  def show
    @organization = Organization.find_by(id: params[:id])
    render :show
  end

  def index
  	@organization = Organization.all
  end
  
end
