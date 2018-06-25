class Event < ApplicationRecord
	has_many :users, through: :eventusers
	belongs_to :organization
end
