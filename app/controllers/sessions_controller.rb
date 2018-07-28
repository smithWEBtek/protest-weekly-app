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
      if @user = User.from_omniauth(env["omniauth.auth"])
        flash[:success] = 'Signed in by Facebook successfully'
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        binding.pry
        flash[:error] = "Error while signing in by Facebook. Let's register."
        redirect_to new_user_path
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

