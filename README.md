# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Google instructions: https://developers.google.com/identity/sign-in/web/sign-in#before_you_begin

When you configure the project, select the Web browser client type and specify the origin URI of your app.

After configuration is complete, take note of the client ID that was created. You will need the client ID to complete the next steps. (A client secret is also created, but you need it only for server-side operations.)

Load the Google Platform Library
You must include the Google Platform Library on your web pages that integrate Google Sign-In.

<script src="https://apis.google.com/js/platform.js" async defer></script>
Specify your app's client ID
Specify the client ID you created for your app in the Google Developers Console with the google-signin-client_id meta element.

<meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">

Add a Google Sign-In button
The easiest way to add a Google Sign-In button to your site is to use an automatically rendered sign-in button. With only a few lines of code, you can add a button that automatically configures itself to have the appropriate text, logo, and colors for the sign-in state of the user and the scopes you request.

To create a Google Sign-In button that uses the default settings, add a div element with the class g-signin2 to your sign-in page:

<div class="g-signin2" data-onsuccess="onSignIn"></div>



