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

  def selectedTeam
    @selectedTeam =
    Team.where(id: params[:id])
    render json: @selectedTeam
  end

  def create
    team = Team.new(
      name: params[:name]
    )
    if team.save
      team.add_creator_to_team(current_user.id)
      render json: team, status: :created
    else
      render json: { errors: team.errors.full_messages }, status: :bad_request
    end
  end

  def indexAvailable
      @availableTeams = []
      @teams = Team.all
      @teams.map do |team|
        if team.players.length == 0
          @availableTeams << team
        end
        team.players.map do |player|
          unless player.id == current_user.id
          @availableTeams << team
        end
      end
    end
          render json: @availableTeams, include: :players
  end
end
