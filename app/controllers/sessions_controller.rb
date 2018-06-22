class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

   def create
    @user = User.find_or_create_by(uid: params['uid']) do |u|
    u.name = auth['info']['name']
    u.email = auth['info']['email']
    u.image = auth['info']['image']
  end
  
    session[:user_id] = @user.id
     
    render 'welcome/home'
  end

 # def create
 #  	@user = User.find_by(name: params[:user][:name])
 #    if @user && @user.authenticate(params[:user][:password])
 #  		session[:user_id] = @user.id 
 #  		redirect_to user_path(@user), notice: "Are you ready to make a difference?"
 #  	else
 #  		redirect_to signin_path
 #  	end
 #  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

 	 
	private
	 
	def auth
	  request.env['omniauth.auth']
	end

   end

