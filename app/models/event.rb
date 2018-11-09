class Event < ApplicationRecord
	validates :name, presence: true

	has_many :happenings
	has_many :users, through: :happenings
	belongs_to :organization

	scope :last_added, -> { order(created_at: :desc).first }
	scope :current_events, -> { where('datetime >= ?',DateTime.now) }
	scope :past_events, -> { where('datetime < ?',DateTime.now)} 


	def happenings_attributes=(happenings_attributes)
		happenings_attributes.each do |happening_attributes|
			self.happenings.build(happening_attributes)
		end
	end

	def users_attributes=(users_attributes)
		users_attributes.each do |user_attributes|
			self.users.build(user_attributes)
		end
	end

	def events_attributes=(events_attributes)
	  events_attributes.each do |event_attributes|
		self.events.build(event_attributes)
	  end
	end

	
end
