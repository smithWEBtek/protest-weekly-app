
10-11-18 
Rails project w/JS Frontend

10/21/18 - js project
happenings#show
<p>Please add this to your calendar:</p>

			<td><%= @happening.event.name %></td>
			<td><%= @happening.event.cause %></td>
			<td><%= @happening.event.location %></td>
			<td><%= @happening.event.datetime.strftime("%A, %B %d, %Y at %H:%M") %></td>	


7/17/18
Start w/moving happenings views to events
@user = current_user
require login
After Happenings save, work on scope (sort by date, number of attendees)
After scope, FB authentication again


<%= datetime_select :datetime, @event_users, :datetime %>test 



<td><%= render 'event_event_users/datetime',event_event_user_path, as: 'datetime' %></td>
			<td><%= render 'event_event_users/location', event_event_users_path(event_users), as: 'location' %></td>

			<td><%= organization.name %></td>

			<td><%= link_to "RSVP for #{event.name}", event_path(@events) %></td>


			<%= f.label :datetime %><br>
	<%= f.date_field :datetime.strftime("%A, %B %d, %Y at %H:%M")%> <br

	<%= link_to "RSVP/Car Pool", edit_user_event_user_path, class: "btn btn-primary btn-light" %><p>

	</p

	from Welcome view:
	<%= link_to('Log in with Facebook!', ) %>
		<% end %>
original FB login from Welcome
		<% if session[:user_id] %>
 	  		<h1><%= @user.name %></h1>	 	  		<h1><%= @user.name %></h1>
 	  		<h2>Email: <%= @user.email %></h2>	 	  		<h2>Email: <%= @user.email %></h2>
 	  		<h2>Facebook UID: <%= @user.uid %></h2>	 	  		<h2>Facebook UID: <%= @user.uid %></h2>
 	  		<img src="<%= @user.image %>">	 	  		<img src="<%= @user.image %>">
 		<% else %>	 		<% else %>
 	  		<%= link_to('Log in with Facebook!', '/auth/facebook') %>	 	  		<%= link_to('Log in with Facebook!', '/auth/facebook') %>
 		<% end %>	 		<% end %>
 		 	
 		welcome code that's part of problem area 7/13:
 		<%= link_to "Sign in with Facebook", '/auth/facebook' %>
 			<%= link_to "Logout", destroy_user_session_path, method: :delete %>

User show
 	<h3>Hello, <%= @user.name %>! Do we have your correct information? </h3>
	<p>If not, please make changes here:</p>
	
	<%= render 'form' %>
	
	<p> If everything is correct, please proceed to the events: </p>
	<p><%= link_to 'Events', '/events' %></p>
	<p><%= link_to 'Create an Event', '/events/new' %></p>
 			 		

	</p>

	from eventusers show:
	<p> <%= @event_user.event.name %>, <%= @event_user.event.location %> on <%= @event_user.event.datetime.strftime("%A, %B %d, %Y at %H:%M") %> to support <%= @event_user.event.cause %></p>
		

		from happening.index
		<table class="table">
	<thead>
		<tr>
			<th colspan="5"></th>
		</tr>
	</thead>

	<tbody>
		<tr>
			<td><strong>Name</strong></td>
			<td><strong>Cause</strong></td>
			<td><strong>Location</strong></td>
			<td><strong>Datetime</strong></td>
			<td><strong>Organization</strong></td>		
		</tr>

	<% @happenings.each do |happening| %>
		<tr>
			<td><%= link_to happenings.event.name, event_path %></td>
			<td><%= happening.event.cause %></td>
			<td><%= happening.event.location %></td>
			<td><%= happening.event.datetime.strftime("%A, %B %d, %Y at %H:%M") %>
			<td><%= event.organization.name %></td>
			</td>
		</tr>
	 <% end %>
</tbody>
</table>
<br>
	<br>
	<br><%= link_to "Create Event", new_event_path, class: "btn btn-primary" %> <br>



from users#show
, <%= @user.name %>

from users#new PUT THIS BACK IN
  <% if @user.errors.any? %>
    <ul class="Signup_Errors">
    <% for message_error in @user.errors.full_messages %>
      <li> <%= message_error %></li>
    <% end %>
    </ul>
  <% end %>

  User model Omniauth

  # end
	def self.from_omniauth(auth)
      @user = User.find_or_create_by(uid: auth[:uid]) do |u|
      u.name = auth[:info][:name]
      u.email = auth[:info][:email]
      u.image = auth[:info][:image]
      # @user.save
     end
 	end 

 		# def self.from_omniauth(auth)
	# 	email = auth[:info][:email] || "#{auth[:uid]}@facebook.com"
 #     	@user = where(email: email).first_or_initialize
 #     	@user.save && user
 #     end
     	# @user = User.find_or_create_by(uid: auth['uid']) do |u|
      #   u.name = auth['info']['name']
      #   u.email = auth['info']['email']
      #   u.image = auth['info']['image']

next scope to add in Events:
scope :coming_soon, -> { order(datetime: :desc).count }
Happenings#show
<p><strong>Event name:</strong>
			<%= happening.event.name %></p>
		<p><strong>Cause: </strong>
			<%= happening.event.cause %></p>
		<p><strong>Location: </strong>
			<%= happening.event.location %></p>
		<p><strong>Day and time:</strong> 
			<%= happening.event.datetime.strftime("%A, %B %d, %Y at %H:%M") %></p>
		<p><strong>Sponsoring organization: </strong>
			<%= event.organization.name %></p>
		<p><strong>Contact info: </strong>
			<%= link_to @event.organization.contact_info %></p>

