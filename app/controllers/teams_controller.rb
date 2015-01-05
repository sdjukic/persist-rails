class TeamsController < ApplicationController
  def new
  end
  def show
  	@team = Team.find(params[:id])
  	@players = Player.where("team_id = #{params[:id]}")
  end
end
