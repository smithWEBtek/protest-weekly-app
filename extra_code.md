from welcome.html.erb

<!--	<%= link_to(#'Log in with Facebook!', '/auth/facebook') %>

	<% #if session[:user_id] %>
	  <h1><%=# @user.name %></h1>
	  <h2>Email: <%= @user.email %></h2>
	  <h2>Facebook UID: <%= @user.uid %></h2>
	  <img src="<%= @user.image %>">
	<% #else %>
	  <%= link_to(#'Log in with Facebook!', '/auth/facebook') %>
	<%# end %> -->

	def require_logged_in
  	redirect_to '/' unless logged_in?
  end


  Google Client ID
  Client ID
302074932140-g1vi86pnuk4513pb75lfj4qjbs1qker3.apps.googleusercontent.com

Google Client Secret

Client Secret
s4YMMk4AGRA3TxvLnukwdImK

