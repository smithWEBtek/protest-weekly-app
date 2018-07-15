class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  
  helper_method :current_user 
    
  def logged_in?
    !!current_user
  end
    
	private
   def require_logged_in
    redirect_to '/' unless logged_in?
   end

	 def current_user
    @current_user ||= session[:current_user_id] &&
    User.find_by(id: session[:current_user_id])
   end

   def self.from_omniauth(auth)
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
 end 
   

end
