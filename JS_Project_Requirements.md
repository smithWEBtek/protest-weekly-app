Project Requirements
[] Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
see DIY Serializer

	user.happenings/index.html

[] Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
	
	user.happenings/RSVPs/show.html

[] Your Rails application must dynamically render on the page at least one 'has-many' relationship through JSON using JavaScript.

	user has_many happenings
	organization has_many events
	event has_many users through happenings

[] Must use your Rails application and JavaScript to render a form for creating a resource that submits dynamically.

	create an event
	create a happening

[] Must translate the JSON responses into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. Formatters work really well for this.

	
