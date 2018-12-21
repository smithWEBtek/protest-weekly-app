$(function () {
	listenEventsClick()
	listenNewEventFormClick()
	listenNewHappeningsClick()

})
//replace the following accordingly
function listenCommentsClick() {
	$('a.load_comments').on('click', function (event) {
		event.preventDefault();

		getPostComments(this.href);
	})
}	

function getPostComments(url) {
	$.ajax({
		method: 'GET',
		url: url,
	}).done(function (data) {
		console.log("the data: ", data);

		debugger
		document.getElementById('comments-html-area').innerHTML = data 
	})
}

function listenNewPostFormClick() {
	$('.ajax-new-post').on('click', function (e) {
		e.preventDefault();
		$('button#new-post').hide()
		newPostForm();
	})
}

function newPostForm() {
	$.ajax({
		url: '/posts/new',
		method: 'get',
		success: function (response) {
			console.log("the response: ", response);
			$('div#new_post_form').html('--- this form--brought to you by AJAX' + response)
		}
	})
}

function listenPostDetailsClick() {
	$('div#posts-index a').on('click', function (event) {
		event.preventDefault()
		console.log("this is the url: ", this.href);
		url = this.href
		$.ajax({
			url: url,
			type: 'get',
			dataType: 'json'
		}).done(function (data) {
			
			let post = new Post(data)
			let html = post.createPostHTML()

			document.getElementById('post-details').innerHTML = html
			listenNewCommentClick()
		})
	})
}

class Post {
	constructor(obj) {
		this.title = obj.title,
		this.content = obj.content,
		this.comments = obj.comments
	}
}

Post.prototype.createPostHTML = function () {
	const comments = (
		this.comments.map((comment, index) => {
			return `<p id=${index}><em>${comment.content}</em></p>`
		}).join(' ')
		)

	return (`
		<div class="container">
			<div class="columns">
				<div class="column is-3">
					<h3 class="title">${this.title}</h3>
					<p class="body">${this.content}</p>
					</div>
					<div class="column is-6">
					<fieldset>
					<strong>comments: </strong>
					<p>${comments}</p>
					<button id='add-comment'>add a comment</button>
					</fieldset>
				</div>
			</div>
		</div>
	`)
}

function listenNewCommentClick() {
	$('button#add-comment').on('click', function (e) {
		e.preventDefault();
	})
}
	