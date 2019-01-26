(function () {
	listenEventsClick()

})
// //replace the following accordingly
function listenEventsClick() {
	$('a.load_events').on('click', function (event) {
		event.preventDefault();
		debugger
		getEvents(this.href);
	})
}	

function getEvents(url) {
	$.ajax({
		method: 'GET',
		url: this.href
	}).done(function (data) {
		console.log(data);

		document.getElementById('events-html-area').innerHTML = data 
	})
	
}

// // Object Model
class Event {
	constructor(obj) {
		this.name = obj.name,
		this.cause = obj.cause,
		this.location = obj.location
		this.datetime = obj.datetime
	}
}


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



// //prototype of Event class
Event.prototype.eventHTML = function () {
		// (the follow should match events.index language)

	return (`
		<div class="container">
			<div class="columns">
				<div class="column is-5">
					<p class="name">${this.name}</p>
					<p class="cause">${this.cause}</p>
					<p class="location">${this.location}</p>
					<p class="datetime">${this.datetime}</p>
					<p class="event_organization_name">${this.organization_name}</p>
					</div>
			</div>
		</div>
	`)
}