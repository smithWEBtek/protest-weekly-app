class EventUser < ApplicationRecord

	belongs_to :event
	belongs_to :user
	#good candidate for scope to limit show returns of events for that week (sort by datetime)

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
