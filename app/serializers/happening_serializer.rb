class HappeningSerializer < ActiveModel::HappeningSerializer
	attributes :id, :attend, :need_ride, :can_drive
	belongs_to :event
	belongs_to :user
end