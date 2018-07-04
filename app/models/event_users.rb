class EventUser < ApplicationRecord

	belongs_to :event, optional: true
	belongs_to :user, optional: true
	#good candidate for scope to limit show returns of events for that week (sort by datetime)

	

	def self.car_pool
		self.car_pool == self.need_ride || self.can_drive
	end

	def self.need_ride
		!self.can_drive
	end

	def self.can_drive
		!self.need_ride
	end

end
