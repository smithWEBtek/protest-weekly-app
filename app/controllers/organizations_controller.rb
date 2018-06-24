class OrganizationsController < ApplicationController
  
  def new
	  @organization = Organization.new
  end

  def create
  	@organization = Organization.create(id: params[:id])
     render :show
  end

  def index
  	@organization = Organization.all
  end
  
end
