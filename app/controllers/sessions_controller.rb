class SessionsController < ApplicationController
	
  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      
      redirect_to user_path(@user), notice: "Are you ready to make a difference?"
    elsif
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
      else
        redirect_to signin_path
      end
    end
  end
    session[:user_id] = @user.id 

    redirect_to user_path(@user)

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end


	private
	 
	def auth_hash
	  request.env['omniauth.auth']
	end

  end

