class SessionsController < ApplicationController
	before_action :prevent_login_signup, only: [:login]

  def login
  end 

  def attempt_login
  	if params[:username].present? && params[:password].present?
  		found_user = User.where(username: params[:username]).first
  		if found_user 
  			authorized_user = found_user.authenticate(params[:password])
  		end 
  	end 

  	if !found_user
  		flash.now[:alert] = "incorrect username"
  		render login
  	elsif !authorized_user
  		flash.now[:alert] = "incorrect password"
  		render login
  	else
  		session[:user_id] = authorized_user.id 
  		flash[:success] = "logged in"
  		#pass an argument to add to url 
  		redirect_to show_path(session[:user_id])
  	end 
  end

  def logout
  	session[:user_id] = nil 
  	flash[:alert] = "logged out"
  	redirect_to login_path
  end 

 private
	def user_params
		params.require(:user).permit(:username, :password, :password_digest)
	end 

end
