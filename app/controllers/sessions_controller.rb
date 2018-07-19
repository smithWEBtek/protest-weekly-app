class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
       @user = User.find_or_create_by(name: params[:user][:name])
        # @user && @user.authenticate(params[:user][:password])
       # binding.pry
       # @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id   
       redirect_to user_path(:user_id)
        # else
       # @user = User.from_omniauth(auth)
       # session[:user_id] = @user.id
       # redirect_to users_path(@user)
       # end
     end

      

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end


	# private
	 
	# def auth
	#   request.env['omniauth.auth']
	# end

 end 

