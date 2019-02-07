$(function(){
	listenEventsClick()
	getEventsClick()
	
})
// events click - return index of events
// happenings click - return index of happenings

$(function listenEventsClick() {
	$('a.load_events').on('click', function (e) {
		
		$.get(this.href).success(function(response) {
			$("div.events").html(response)
		})

		e.preventDefault();
	})
	
})

$(function getEventsClick() {
	$.ajax({
		method: 'GET',
		url: this.href
	}).done(function (response) {
		console.log(response);

	})
})


// // Object Model
// class Event {
// 	constructor(protest) {
// 		this._name = protest.name,
// 		this._cause = protest.cause,
// 		this._location = protest.location
// 		this._datetime = protest.datetime
//  		this._organization = protest.organization
    
// 	}
// }

// class Happening extends Event {
// 	constructor(protest, willAttend, canDrive) {
// 		super(protest);
// 		this._willAttend = false;
// 		this._canDrive = false;
// 	}
// }j



// // //replace the following accordingly
// // make sure 'load_Happenings' appears somewhere in the bloody views to give JS direcction
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