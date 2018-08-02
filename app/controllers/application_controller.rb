class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  before_action :current_user
  before_action :user_signed_in?, except: [:new, :create, :home]
    
  def user_signed_in?
    !!current_user
  end

  private

  def authenticate
    redirect_to :signin unless user_signed_in?
  end

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
    
  def current_event
    @current_event ||= session[:user_id] && Event.find_by(id: session[:event_id])
  end

  helper_method :current_user

end
