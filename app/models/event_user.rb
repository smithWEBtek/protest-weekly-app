class EventUser < ApplicationRecord

	belongs_to :event, optional: true
	belongs_to :user, optional: true
	
	
	def self.attend
		if !self.user && !self.event
		elsif self.car_pool
		end			
	end

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
