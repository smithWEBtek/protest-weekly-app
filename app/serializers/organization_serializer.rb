class OrganizationSerializer < ActiveModel::Serializer
	attributes :id, :name, :contact_info
	has_many :events
end