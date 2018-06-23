class OrganizationsController < ApplicationController
<<<<<<< HEAD
  
  def new
  	@organization = Organization.new
=======

  def new
	@organization = Organization.new
  end

  def create
  	@organization = Organization.find_or_create_by(id: params[:id])
     render :show
>>>>>>> views-branch
  end

  def show
  	@organization = Organization.find_by(id: params[:id])
<<<<<<< HEAD
  end

  def index
  	@organization = Organization.all
  end
  
=======
  end

  	

>>>>>>> views-branch
end
