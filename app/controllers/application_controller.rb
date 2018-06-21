class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
    # before_action :current_user
    # before_action :require_logged_in, except: [:new, :create, :home]

    def needs_ride
    	@user != can_drive
    end

    def can_drive
    	@user != needs_ride
    end

	private
	def current_user
    @current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  	end
end
