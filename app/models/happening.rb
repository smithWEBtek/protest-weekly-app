class Happening < ApplicationRecord

	belongs_to :event
	belongs_to :user
	
	def self.attend
		if !self.user && !self.event
			true
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