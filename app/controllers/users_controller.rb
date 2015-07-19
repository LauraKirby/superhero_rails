class UsersController < ApplicationController
	#before_action :user_params, only: [:create, :update]

  def index
  	@teams = Team.all
  end


  def signup
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	session[:user_id] = @user.id
  	session[:is_admin] = @user.is_admin
  	flash[:success] = "logged in"
  	redirect_to show_path(session[:user_id])
  end 

  def show
  	@teams = Team.all
  	flash[:success] = "logged in"
  	render :show
  end

private
	def user_params
		params.require(:user).permit(:username, :password, :password_digest, :is_admin)
	end 

end

