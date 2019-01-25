//Find & replace & add as appropriate
//we want to interrupt the listing of Happenings (index), 
//a newly created Happening, and 
//the process of creating a Happening (form)
$(function () {
	listenHappeningsClick()

})
// //replace the following accordingly
// make sure 'load_Happenings' appears somewhere in the bloody views to give JS direcction
function listenHappeningsClick() {
	$('a.load_Happenings').on('click', function (event) {
		event.preventDefault();
		debugger
		getHappenings(this.href);
	})
}	

function getHappenings(url) {
	$.ajax({
		method: 'GET',
		url: url,
	}).done(function (data) {
		console.log("the data: ", data);

		document.getElementById('happenings-html-area').innerHTML = data 
	})
	
}
// function listenNewHappeningFormClick() {
// 	$('.ajax-new-happening').on('click', function (e) {
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
// }

// function listenHappeningDetailsClick() {
// 	$('div#happenings-index a').on('click', function (event) {
// 		event.preventDefault()
// 		console.log("this is the url: ", this.href);
// 		url = this.href
// 		$.ajax({
// 			url: url,
// 			type: 'get',
// 			dataType: 'json'
// 		}).done(function (data) {
			
// 			let event = new Happening(data)
// 			let html = event.createHappeningHTML()

// 			document.getElementById('event-details').innerHTML = html
// 			listenNewHappeningClick()
// 		})
// 	})
// }

// class Happening {
// 	constructor(obj) {
// 		this.name = obj.name,
// 		this.cause = obj.cause,
// 		this.location = obj.location
// 		this.happenings = obj.happenings
// 	}
// }

// Happening.prototype.createHappeningHTML = function () {
// 	const happenings = (
// 		this.happenings.map((happening, index) => {
// 			return `<p id=${index}><em>${happening.user}</em></p>`
// 		}).join(' ')
// 		)

// 	return (`
// 		<div class="container">
// 			<div class="columns">
// 				<div class="column is-3">
// 					<h3 class="name">${this.event_name}</h3>
// 					<p class="body">${this.cause}</p>
// 					</div>
// 					<div class="column is-6">
// 					<fieldset>
// 					<strong>happenings: </strong>
// 					<p>${happenings}</p>
// 					<button id='add-comment'>add a comment</button>
// 					</fieldset>
// 				</div>
// 			</div>
// 		</div>
// 	`)
// }

// function listenNewHappeningsClick() {
// 	$('button#add-happening').on('click', function (e) {
// 		e.preventDefault();
// 	})
// }
// 	
