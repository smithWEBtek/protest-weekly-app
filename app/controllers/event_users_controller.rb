class Event_UsersController < ApplicationController

	def car_pool
		@car_pool == @ride || @drive
	end

	def need_ride
		!can_drive
	end

	def can_drive
		!need_ride
	end


end
