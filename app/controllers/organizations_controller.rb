class OrganizationsController < ApplicationController
  
  def new
  	@organization = Organization.new
  end

  def show
  	@organization = Organization.find_by(id: params[:id])
  end

  def index
  	@organization = Organization.all
  end
  
end
