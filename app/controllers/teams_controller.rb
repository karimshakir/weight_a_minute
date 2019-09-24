class TeamsController < ApplicationController
  before_action :authenticate_user
  def index
    @teams = Team.all
    render json: @teams, include: :players
  end

  def show
    @myTeams =
    Team.where(player_id: current_user.id)
    render json: @myTeams
  end

  def create
    team = Team.new(
      name: params[:name]
    )
    if team.save
      render json: {message: 'Team created successfully'}, status: :created
    else
      render json: {errors: team.errors.full_messages}, status: :bad_request
    end
  end
end
