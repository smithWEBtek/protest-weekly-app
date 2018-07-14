class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    # binding.pry
    # @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id
       redirect_to user_path(@user)
    else
        @user = User.from_omniauth(request.env["omniauth.auth"])
        session[:user_id] = @user.id
        redirect_to users_path(@user)

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

