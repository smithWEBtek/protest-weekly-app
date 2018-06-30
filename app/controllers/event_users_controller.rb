class Event_UsersController < ApplicationController

	def car_pool
		@car_pool == @ride || @drive
	end

	def ride
		!drive
	end

	def drive
		!ride
	end


end
