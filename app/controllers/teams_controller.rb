class TeamsController < ApplicationController
  before_action :authenticate_user
  def index
    @teams = Team.where(player_id: current_user.id)
    render json: @teams
  end

  def show
    @Teams = Team.where(player_id: current_user.id).last.pluck(:player_id,:value)
    render 'index.json.jbuilder'
  end

  def create
    Team = Team.new(
      player_id: current_user.id,
      value: params[:value]
    )
    if weight.save
      render json: {message: 'Team created successfully'}, status: :created
    else
      render json: {errors: Team.errors.full_messages}, status: :bad_request
    end
  end
end
