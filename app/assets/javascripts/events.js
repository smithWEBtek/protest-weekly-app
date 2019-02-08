$(function () {
	listenEventsClick()
	console.log('speak dammit')
	// getEventsClick()

})


// events click - return index of events
// happenings click - return index of happenings

function listenEventsClick() {
	$('a.load_events').on('click', function (e) {
		e.preventDefault();

		$.ajax({
			url: this.href,
			method: 'get',
			dataType: 'json'
		}).done(function (response) {
			console.log("response: ", response);

			let event = new Event(response[0])
			let eventHtml = event.eventHTML()

			$("div.events").html(eventHtml)
		})

	})
}

$(function getEventsClick() {
	$.ajax({
		method: 'GET',
		url: this.href
	}).done(function (response) {
		// debugger

	})
})


// // Object Model
class Event {
	constructor(protest) {
		this.name = protest.name
		this.cause = protest.cause
		this.location = protest.location
		this.datetime = protest.datetime
		this.organization_name = protest.organization.name
	}
}

// class Happening extends Event {
// 	constructor(protest, willAttend, canDrive) {
// 		super(protest);
// 		this._willAttend = false;
// 		this._canDrive = false;
// 	}
// }j



// // //replace the following accordingly
// // make sure 'load_Happenings' appears in the view to give JS direcction
// function listenHappeningsClick() {
// 	$('a.load_happenings').on('click', function (event) {
// 		event.preventDefault();
// 		debugger
// 		getHappenings(this.href);
// 	})
// }	

// function getHappenings(url) {
// 	$.ajax({
// 		method: 'GET',
// 		url: this.href
// 	}).done(function (data) {
// 		console.log(data);

// 		document.getElementById('happenings-html-area').innerHTML = data 
// 	})

// }
// // function listenNewHappeningFormClick() {
// // 	$('.ajax-new-happening').on('click', function (e) {
// 		e.preventDefault();
// 		$('button#new-happening').hide()
// 		newHappeningForm();
// 	})
// }

// function newHappeningForm() {
// 	$.ajax({
// 		url: '/happenings/new',
// 		method: 'get',
// 		success: function (response) {
// 			console.log("the response: ", response);
// 			$('div#new_happening_form').html('--- this form--brought to you by AJAX' + response)
// 		}
// 	})
// }// $(function () {
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



//prototype of Event class which I don't need since I have class objects
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
					<p class="organization_name">${this.organization_name}</p>
					</div>
			</div>
		</div>
	`)
}