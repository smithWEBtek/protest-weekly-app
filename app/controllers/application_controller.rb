class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  
    
	private
    
	def current_user
      @current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end

    helper_method :current_user
    
end
