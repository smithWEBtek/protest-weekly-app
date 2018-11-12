# serialize organization's name, contact_info, event_name and event_date to JSON
class OrganizationSerializer
  def self.serialize(organization)
    # start with the open brace to create a valid JSON object
	    serialized_organization = '{'
	 
	    serialized_organization += '"id": ' + organization.id.to_s + ', '
	    serialized_organization += '"name": "' + organization.name + '", '
	    serialized_organization += '"contact_info": "' + organization.contact_info + '", '
	    serialized_organization += '"event_name": "' + organization.event.name + '", '
	    serialized_organization += '"event_datetime": "' + organization.event.datetime + '" '
	    	 
	    # and end with the close brace
	    serialized_organization += '}'
	  
	end

end
