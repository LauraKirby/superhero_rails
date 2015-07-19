class UsersController < ApplicationController
	#before_action :user_params, only: [:create, :update]

  def index
  end

  def login
  	render :index
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
  		render :index
  	elsif !authorized_user
  		flash.now[:alert] = "incorrect password"
  		render :index
  	else
  		session[:user_id] = authorized_user.id 
  		flash[:success] = "logged in"
  		#pass an argument to add to url 
  		redirect_to show_path(session[:user_id])
  	end 
  end

  def signup
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	session[:user_id] = @user.id
  	flash[:success] = "logged in"
  	redirect_to show_path(session[:user_id])
  end 

  def show
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

