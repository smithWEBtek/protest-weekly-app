class Organization < ApplicationRecord
	validates :name, presence: true
	validates_uniqueness_of :name
	
	has_many :events
	
	def events_attributes=(events_attributes)
		events_attributes.each do |events_attributes|
			self.events.build(event_attributes)
		end
	end
end
