class Happening < ApplicationRecord

	belongs_to :event
	belongs_to :user
	
	def self.attend
	  self.user && self.event		
	end

	def self.need_ride
	  !self.can_drive
	end

	def self.can_drive
	  !self.need_ride
	end

	# def self.carpool
	#   self.can_drive || self.need_ride
	# end

end
