class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    @user = User.find_or_create_by(name: params[:user][:name])
     if @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id  
       redirect_to user_path(@user)
     else
       flash.now[:danger] = 'Invalid email/password combination'
       redirect_to '/'
     end
   end

  def facebook
     if @user = User.from_omniauth(request.env["omniauth.auth"])
       session[:user_id] = @user.id
       flash[:success] = 'Signed in by Facebook successfully'
       redirect_to user_path(@user)
     else
       flash[:error] = "Error while signing in by Facebook. Let's register."
       redirect_to new_user_path(@user)
     end
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

