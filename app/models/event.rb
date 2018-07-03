class Event < ApplicationRecord
	validates :name, presence: true
	
	has_many :event_users
	has_many :users, through: :event_users
	belongs_to :organization


	# @organization = @event.create_organization(organization_params) 
	
end
