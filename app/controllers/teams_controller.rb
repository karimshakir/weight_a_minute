class TeamsController < ApplicationController
  before_action :authenticate_user
  def index
    @teams = Team.all.includes(:players)
    render json: @teams #, include: [:enrollments, :players]
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
      team.add_creator_to_team(current_user.id)
      render json: { message: 'Team created successfully' }, status: :created
    else
      render json: { errors: team.errors.full_messages }, status: :bad_request
    end
  end
end
