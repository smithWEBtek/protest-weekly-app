Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer, unless Rails.env.production?
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
   callback_url: "https://192.168.1.2/auth/facebook/callback", scope: 'email', 
   token_params: { parse: :json } 
  end
# end
