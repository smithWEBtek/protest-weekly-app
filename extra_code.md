<%= datetime_select :datetime, @event_users, :datetime %>test 


<td><strong>Date & Time</strong></td>
			<td><strong>Location</strong></td>
			<td><strong>Organization</strong></td>
<td><%= render 'event_event_users/datetime',event_event_user_path, as: 'datetime' %></td>
			<td><%= render 'event_event_users/location', event_event_users_path(event_users), as: 'location' %></td>

			<td><%= organization.name %></td>

			<td><%= link_to "RSVP for #{event.name}", event_path(@events) %></td>