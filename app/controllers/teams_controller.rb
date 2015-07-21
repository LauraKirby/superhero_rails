class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :udate, :destroy] 
  before_action :find_user, only: [:index, :new, :create]
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
  end

  def edit
  end 

  def update 
  end

  def destroy
  end 


private
	def team_params
		params.require(:team).permit(:name, :description, :user_id)
	end

  def find_user
    @user = User.find_by_id(session[:user_id])
  end 

  def find_team
    @team = Team.find_by_id(params[:id])
  end 

end #end controller

