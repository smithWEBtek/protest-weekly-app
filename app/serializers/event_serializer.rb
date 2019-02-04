
class EventSerializer < ActiveModel::Serializer
	attributes :id, :name, :cause, :location, :datetime
	has_many :happenings
	has_many :users
	belongs_to :organization
	
end