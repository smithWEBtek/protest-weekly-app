class Happening < ApplicationRecord
	validates :user, :event, presence: true
	belongs_to :event
	belongs_to :user

	# scope :current_happenings, -> { where('event.datetime >= ?',DateTime.now) }
	
	def self.attend
	  self.user && self.event		
	end

	def self.need_ride
	  !self.can_drive
	end

	def self.can_drive
	  !self.need_ride
	end

	def happenings_attributes=(happenings_attributes)
	  happenings_attributes.each do |happening_attributes|
		self.happenings.build(happening_attributes)
	  end
	end
	
end
