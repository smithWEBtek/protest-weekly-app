# serialize happening's name, cause, location, organization to JSON
class HappeningSerializer
  def self.serialize(happening)
    # start with the open brace to create a valid JSON object
	    serialized_happening = '{'
	 
	    serialized_happening += '"id": ' + happening.id.to_s + ', '
	    serialized_happening += '"name": "' + happening.event.name + '", '
	    serialized_happening += '"cause": "' + happening.event.cause + '", '
	    serialized_happening += '"location": "' + happening.event.location + '", '
	    serialized_happening += '"organization": "' + happening.event.organization + '" '
	    	 
	    # and end with the close brace
	    serialized_happening += '}'
	  
	end

end
