class Organization < ApplicationRecord
	
	has_many :events
	has_many :users, through: :eventusers
end
