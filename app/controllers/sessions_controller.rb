class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      redirect_to user_path(@user), notice: "Are you ready to make a difference?"
    else
      redirect_to signin_path
    end
  end

    session[:user_id] = @user.id
     
    render 'welcome/welcome'
  

 
  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

 	 
	private
	 
	def auth
	  request.env['omniauth.auth']
	end

  end

