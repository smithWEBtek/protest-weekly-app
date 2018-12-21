class OrganizationSerializer < ActiveModel::EventSerializer
	attributes :id, :name, :contact_info
	has_many :events
end