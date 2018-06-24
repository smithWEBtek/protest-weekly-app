class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def edit
  end

  def create
    @venue = Venue.create(venue_params)
    @venue.save
  end

  def show
  end
  
  def destroy
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :street_address, :city, :state)
  end
end
