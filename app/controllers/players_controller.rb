class PlayersController < ApplicationController
  before_action :authenticate_user
  def index
    @player = Player.find(current_user.id)
    render json: @player, include: :weights
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    player = Player.new(
      name: params[:name]
    )
    if player.save
      render json: {message: 'Player created successfully'}, status: :created
    else
      render json: {errors: player.errors.full_messages}, status: :bad_request
    end
  end

end
