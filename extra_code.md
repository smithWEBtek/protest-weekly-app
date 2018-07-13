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
 			 		