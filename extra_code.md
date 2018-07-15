<%= datetime_select :datetime, @event_users, :datetime %>test 



<td><%= render 'event_event_users/datetime',event_event_user_path, as: 'datetime' %></td>
			<td><%= render 'event_event_users/location', event_event_users_path(event_users), as: 'location' %></td>

			<td><%= organization.name %></td>

			<td><%= link_to "RSVP for #{event.name}", event_path(@events) %></td>


			<%= f.label :datetime %><br>
	<%= f.date_field :datetime.strftime("%A, %B %d, %Y at %H:%M")%> <br

	<%= link_to "RSVP/Car Pool", edit_user_event_user_path, class: "btn btn-primary btn-light" %><p>
	</p>

	from eventusers show:
	<p> <%= @event_user.event.name %>, <%= @event_user.event.location %> on <%= @event_user.event.datetime.strftime("%A, %B %d, %Y at %H:%M") %> to support <%= @event_user.event.cause %></p>
		