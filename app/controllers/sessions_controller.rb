class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
     @user = User.find_by(email: params[:@user][:email])
      if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id  
      redirect_to user_path(@user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to '/'
    end
  end

  def facebook
      @user = User.find_from_omniauth(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
      binding.pry
      redirect_to user_path(:id)
    end
  # end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

	private
	 
	def auth_hash
	  request.env['omniauth.auth']
	end

 end 

