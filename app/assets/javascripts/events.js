$(function () {
	$('a.load_events').on('click', function (e) {
		
		$.get(this.href).success(function(response) {
			$("div.events").html(response)
		})

		e.preventDefault();
	})
	
})

// // Object Model
class Event {
	constructor(protest) {
		this._name = protest.name,
		this._cause = protest.cause,
		this._location = protest.location
		this._datetime = protest.datetime
 		this._organization = protest.organization
    
	}
}

class Happening extends Event {
	constructor(protest, willAttend, canDrive) {
		super(protest);
		this._will_attend = false;
		this._canDrive = false;
	}
}j
// $(function () {
// 	// listenNewEventClick()
// 	listenEventsClick()
// })
// //replace the following accordingly
// function listenEventsClick() {
// 	$('a.events').on('click', function (event) {
// 		event.preventDefault();
// 		debugger
// 		getEvents(this.href);
// 	})
// }	

// function getEventsClick(){
// 	$.ajax({
// 		method: 'GET',
// 		url: this.href,
// 	}).done(function (data) {
// 		console.log("the data: ", data);
// 		document.getElementById('events-htmll-area').innerHTML = data
// 	})
// }



// //prototype of Event class which I don't need since I have class objects
// Event.prototype.eventHTML = function () {
// 		// (the follow should match events.index language)

// 	return (`
// 		<div class="container">
// 			<div class="columns">
// 				<div class="column is-5">
// 					<p class="name">${this.name}</p>
// 					<p class="cause">${this.cause}</p>
// 					<p class="location">${this.location}</p>
// 					<p class="datetime">${this.datetime}</p>
// 					<p class="event_organization_name">${this.organization_name}</p>
// 					</div>
// 			</div>
// 		</div>
// 	`)
// }