class EventgSerializer
  def self.serialize(event)
    # start with the open brace to create a valid JSON object
	    serialized_event = '{'
	 
	    serialized_event += '"id": ' + event.id.to_s + ', '
	    serialized_event += '"name": "' + event.name + '", '
	    serialized_event += '"cause": "' + event.cause + '", '
	    serialized_event += '"location": "' + event.location + '", '
	    serialized_event += '"organization": "' + event.organization + '", '
	    serialized_event += '"datetime": "' + event.datetime + '" '
	    	 
	    # and end with the close brace
	    serialized_event += '}'
	  
	end

end
