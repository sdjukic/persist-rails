class PlayersController < ApplicationController
  def new
  end
  def show
    @player = Player.find(params[:id])
    @team = Team.find(@player.team_id)
  end
end
