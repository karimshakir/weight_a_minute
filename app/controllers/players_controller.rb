class PlayersController < ApplicationController

  def index
    @players = Player.all
    render 'index.json.jbuilder'
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

  def show
    @player = Player.find(params[:id])
    # render 'show.html.erb'
  end

end
