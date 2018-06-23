class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

   def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end
  
  def destroy
    session.delete("user_id")
    redirect_to root_path
  end


	private
	 
	def auth_hash
	  request.env['omniauth.auth']
	end

  end

