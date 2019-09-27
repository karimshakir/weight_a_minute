class PlayersController < ApplicationController
  before_action :authenticate_user

  def index
    @players = Player
      .all
      .includes(:weights, :teams)
      .sort_by { |player| player.wt_loss }

    render json: @players
  end

  def show
    @player =
      if (params[:id] == 'me')
        Player.find(current_user.id)
      else
        Player.find(params[:id])
      end
    render json: @player, include: [:weights, :teams]

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
