# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
# end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['Google_client_id'], ENV['Google_client_secret'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end