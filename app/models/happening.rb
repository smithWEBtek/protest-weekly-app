class Happening < ApplicationRecord

	belongs_to :event
	belongs_to :user
	
	def self.attend
		!self.user && !self.event || self.car_pool		
	end

	def self.car_pool
		self.need_ride || self.can_drive
	end

	def self.need_ride
		!self.can_drive
	end

	def self.can_drive
		!self.need_ride
	end

end
