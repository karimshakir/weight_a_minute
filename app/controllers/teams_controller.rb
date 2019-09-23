class TeamsController < ApplicationController
  before_action :authenticate_user
  def index
    @teams = Team.all
    render json: @teams
  end

end
