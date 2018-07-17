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

