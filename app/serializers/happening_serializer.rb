class HappeningSerializer < ActiveModel::Serializer
	attributes :id, :attend, :need_ride, :can_drive, :event_id, :user_id
	belongs_to :event
	belongs_to :user
end
