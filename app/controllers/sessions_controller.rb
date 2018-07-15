class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    # @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id   
       redirect_to user_path(@user)
    elsif
      @user = User.find_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
        redirect_to signin_path
       end
     end
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

