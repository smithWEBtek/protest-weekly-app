class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    binding.pry
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
       # redirect_to user_path(@user), notice: "Are you ready to make a difference?"
      session[:user_id] = @user.id
    else
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
    end
        redirect_to signin_path
    end
  end
     

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end


	private
	 
	# def auth_hash
	#   request.env['omniauth.auth']
	# end

  end

