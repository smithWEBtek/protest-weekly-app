class Venue < ApplicationRecord
	has_many :events, through: :organizations
	
end
