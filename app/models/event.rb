class Event < ApplicationRecord
	validates :name, presence: true
	# scope: :cause -> {where(cause: 'equality')}
	
	has_many :happenings
	has_many :users, through: :happenings
	belongs_to :organization

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
