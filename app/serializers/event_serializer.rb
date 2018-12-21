class EventSerializer < ActiveModel::EventSerializer
	attributes :id, :name, :cause, :location, :datetime
	has_many :happenings
	has_many :users, through: :happenings
	belongs_to :organization
end