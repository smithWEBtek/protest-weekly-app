class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

  helper_method :current_user
    
  def authenticate
    redirect_to :login unless user_signed_in?
  end

  def current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
    
  def user_signed_in?
    !!current_user
  end
	
end
