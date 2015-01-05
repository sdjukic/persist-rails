class DivisionsController < ApplicationController
  def new
  end
  def show
  	  country_id = Division.find(params[:id]).country_id
  	  @country = Country.find(country_id).name
  	  @level = Division.find(params[:id]).level
      @division_teams = Team.where("country_id = #{country_id} AND division_id = #{@level}")
  end
end
