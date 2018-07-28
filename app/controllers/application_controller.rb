class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  
  helper_method :current_user
    
  def authenticate
    redirect_to :login unless logged_in
  end

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
    
  def user_signed_in?
    !!current_user
  end
	
  def current_event
    @current_event ||= session[:user_id] && Event.find_by(id: session[:user_id])
  end


end
