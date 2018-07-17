class SessionsController < ApplicationController
	
  def new
  	@user = User.new
    @user = current_user
  end

  def create

       @user = User.find_or_create_by(name: params[:user][:name])
        @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id   
       redirect_to user_path(@user)

      # if @user && @user.authenticate(params[:user][:password])
    # else
    #     @user = User.find_or_create_by(uid: auth['uid']) do |u|
    #       u.name = auth['info']['name']
    #       u.email = auth['info']['email']
    #       u.image = auth['info']['image']
    #     end
    # end

  end
     

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end


	private
	 
	# def auth
	#   request.env['omniauth.auth']
	# end

 end 

