 Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :developer, unless Rails.env.production?
   provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], callback_url: "https://localhost:3000/auth/facebook/callback", scope: 'email', token_params: { parse: :json } 
   end


