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
    if user = User.from_omniauth(request.env["omniauth.auth"])
      flash[:success] = 'Signed in by Facebook successfully'  
      session[:user_id] = user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Error while signing in by Facebook. Let's register."
      redirect_to '/'
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

