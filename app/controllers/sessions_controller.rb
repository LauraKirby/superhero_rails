class SessionsController < ApplicationController
	before_action :prevent_login_signup, only: [:login]

  def login
    redirect_to users_path
  end 

  def attempt_login
  	if params[:username].present? && params[:password].present?
  		found_user = User.where(username: params[:username]).first
  		if found_user 
  			authorized_user = found_user.authenticate(params[:password])
  		end 
  	end 

  	if !found_user
  		flash[:alert] = "incorrect username"
  		redirect_to users_path
  	elsif !authorized_user
  		flash[:alert] = "incorrect password"
  		redirect_to users_path
  	else
  		session[:user_id] = authorized_user.id 
  		flash[:success] = "logged in"
  		#pass an argument to add to url/route
  		redirect_to user_path(session[:user_id])
  	end 
  end

  def logout
  	session[:user_id] = nil 
  	flash[:alert] = "logged out"
  	redirect_to users_path
  end 

 private
	def user_params
		params.require(:user).permit(:username, :password, :password_digest)
	end 

end
