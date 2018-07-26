class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id   
    redirect_to user_path(@user)
    else
    redirect_to '/', notice: "Signin failed. Please try again."
    end
  end

  def facebook
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
    session[:uid] = @user.id 
    binding.pry
    redirect_to user_path(:id)
  
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

	private
	 
	def auth
	  request.env['omniauth.auth']
	end

 end 

