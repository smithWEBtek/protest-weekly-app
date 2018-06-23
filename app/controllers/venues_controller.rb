class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def edit
  end

  def create
    @venue = Venue.create
  end

  def show
    @venue = Venue.find_by(id: params[:id])
  end
  
  def destroy
  end
end
