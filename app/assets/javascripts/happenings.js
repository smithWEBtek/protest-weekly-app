// //Find & replace & add as appropriate
// //we want to interrupt the listing of Happenings (index), 
// //a newly created Happening, and 
// //the process of creating a Happening (form)
$(function () {
	listenHappeningsClick()
	// getHappeningsClick() 
})

$(function listenHappeningsClick() {
	$('a.load_happenings').on('click', function (e) {
		
		$.get(this.href).success(function(response) {
			$("div.happenings").html(response)
		})

		e.preventDefault();
	})
	
})

$(function getHappeningsClick() {
	$.ajax({
		method: 'GET',
		url: this.href
	}).done(function (response) {
		// console.log(response);
		$('div#happenings')
		// document.getElementById("div.happenings").innerHTML = response 
	})
})
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
	// fairly certain that 'ajax-new-happening' aint in the code now
// 		e.preventDefault();
// 		$('button#new-happening').hide() -- and where'd this come from?!?
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

// class Happening {
// 	constructor(obj) {
// 		this.name = obj.name,
// 		this.cause = obj.cause,
// 		this.location = obj.location
// 		this.happenings = obj.happenings
// 	}
// }

