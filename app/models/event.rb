class Event < ApplicationRecord
	validates :name, presence: true

	has_many :event_users
	has_many :users, through: :event_users
	belongs_to :organization

	# scope :

	def users_attributes=(users_attributes)
		users_attributes.each do |user_attributes|
			self.users.build(user_attributes)
		end
	end

	def event_users_attributes=(event_users_attributes)
		event_users_attributes.each do |event_user_attributes|
			self.event_users.build(event_user_attributes)
		end
	end
	
end
