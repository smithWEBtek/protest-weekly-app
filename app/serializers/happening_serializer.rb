# serialize happening's name, price, inventory, description to JSON
class HappeningSerializer
  def self.serialize(happening)
    # start with the open brace to create a valid JSON object
	    serialized_happening = '{'
	 
	    serialized_happening += '"id": ' + happening.id.to_s + ', '
	    serialized_happening += '"name": "' + happening.event.name + '", '
	    serialized_happening += '"cause": "' + happening.event.cause + '", '
	    serialized_happening += '"location": "' + happening.inventory.to_s + '", '
	    serialized_happening += '"description": "' + happening.description + '" '
	    	 
	    # and end with the close brace
	    serialized_happening += '}'
	  
	end

end
