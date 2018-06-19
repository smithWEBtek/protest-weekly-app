class Event < ApplicationRecord
	has_many :users
	belongs_to :venue
end
