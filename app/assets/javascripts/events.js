$(function () {
	listenNewEventClick()
	// listenNewEventFormClick()
})
//replace the following accordingly
function listenNewEventClick() {
	$('a.new_event').on('click', function (event) {
		event.preventDefault();
		debugger
		getEvents(this.href);
	})
}	

function getNewEvent(url) {
	$.ajax({
		method: 'GET',
		url: this.href
	}).done(function (data) {
		console.log(data);
		// $('div#comments-html-area').html(data); // data in div is replaced // jquery way
		// $('div#comments-html-area').append(data); // data piles up in DOM on each click!
		// see div#comments - look for in views. This is how/what we hijack
		document.getElementById('events-html').innerHTML = data 
	})
}

// function listenNewEventFormClick() {
// 	$('.ajax-new-event').on('click', function (e) {
// 		e.preventDefault();
// 		$('button#new-event').hide()
// 		newEventForm();
// 	})
// }

// function newEventForm() {
// 	$.ajax({
// 		url: '/events/new',
// 		method: 'get',
// 		success: function (response) {
// 			console.log("the response: ", response);
// 			$('div#new_event_form').html('--- this form--brought to you by AJAX' + response)
// 		}
// 	})
// }

// function listenEventDetailsClick() {
// 	$('div#events-index a').on('click', function (event) {
// 		event.preventDefault()
// 		console.log("this is the url: ", this.href);
// 		url = this.href
// 		$.ajax({
// 			url: url,
// 			type: 'get',
// 			dataType: 'json'
// 		}).done(function (data) {
			
// 			let event = new Event(data)
// 			let html = event.createEventHTML()

// 			document.getElementById('event-details').innerHTML = html
// 			listenNewEventClick()
// 		})
// 	})
// }

class Event {
	constructor(obj) {
		this.name = obj.name,
		this.cause = obj.cause,
		this.location = obj.location
		this.datetime = obj.datetime
	}
}

Event.prototype.createEventHTML = function () {
	const events = (
		this.events.map((event, index) => {
			return `<p id=${index}><em>${event.user}</em></p>`
		}).join(' ')
		)

	return (`
		<div class="container">
			<div class="columns">
				<div class="column is-3">
					<h3 class="name">${this.event_name}</h3>
					<p class="body">${this.cause}</p>
					</div>
					<div class="column is-6">
					<fieldset>
					<strong>events: </strong>
					<p>${events}</p>
					<button id='add-comment'>add a comment</button>
					</fieldset>
				</div>
			</div>
		</div>
	`)
}