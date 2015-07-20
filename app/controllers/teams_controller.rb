class TeamsController < ApplicationController
  def index 
  	@teams = Team.all 
  	@team = Team.new
  end 

  def new
  	@team = Team.new
  end

  def create
  	@team = Team.create(team_params)
  	redirect_to user_teams_path(session[:user_id])
  end

  def show
  	@team = Team.find_by_id(params[:id])
  end


private
	def team_params
		params.require(:team).permit(:name, :description)
	end

end #end controller
