class Happening < ApplicationRecord

	belongs_to :event
	belongs_to :user
	
	# scope :expected_attendees, -> { where( 'happening.attend' >= 1).count}

	def self.attend
		!self.user && !self.event		
	end

	def self.need_ride
		!self.can_drive
	end

	def self.can_drive
		!self.need_ride
	end

	def self.carpool
		can_drive || need_ride
	end

end
