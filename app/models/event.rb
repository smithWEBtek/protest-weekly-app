class Event < ApplicationRecord
	validates :name, presence: true

	has_many :happenings
	has_many :users, through: :happenings
	belongs_to :organization

	scope :expected_attendees { where( 'event.happening.attend' >= 1).count}
	scope :upcoming_event, -> { where('event.datetime >= ?', Time.now)}

	def users_attributes=(users_attributes)
		users_attributes.each do |user_attributes|
			self.users.build(user_attributes)
		end
	end

	def happenings_attributes=(happenings_attributes)
		happenings_attributes.each do |happening_attributes|
			self.happenings.build(happening_attributes)
		end
	end
	
end
