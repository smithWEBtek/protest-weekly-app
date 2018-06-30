class EventUser < ApplicationRecord

	belongs_to :event
	belongs_to :user

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
