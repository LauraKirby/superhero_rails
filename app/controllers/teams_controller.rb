class TeamsController < ApplicationController
  def index 
  	@teams = Team.all 
  end 

  def new
  	@team = Team.new
  end

  def create
  	@team = Team.create(team_params)
  	session[:user_id] = @user.id
  	session[:is_admin] = @user.is_admin
  	redirect_to user_teams_path(session[:user_id])
  end

  def show
  end


private
	def team_params
		params.require(:team).permit(:name, :description)
	end

end #end controller
