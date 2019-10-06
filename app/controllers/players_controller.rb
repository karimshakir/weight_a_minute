class PlayersController < ApplicationController
  before_action :authenticate_user, except: :create

  def index
    @players = Player.all
    render json: @players
  end

  def show
    @player =
      if (params[:id] == 'me')
        Player.find(current_user.id)
      else
        Player.find(params[:id])
      end
      @total_loss = @player.wt_loss
    render 'show.json.jbuilder'
  end

  def create
    player = Player.new(
      name: params[:name]
    )
    if player.save
      jwt = JWT.encode(
        {
          player_id: player.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: { jwt: jwt, palyer_id: player.id }, status: :created
    else
      render json: { errors: player.errors.full_messages }, status: :bad_request
    end
  end

  def player_ranking
    @team =
      Team.where(id: params[:teamId])
        @output = @team[0].players.sort_by { |player| -player.wt_loss }
        render 'index.json.jbuilder'
  end

  def my_rank
 @team =
      Team.where(id: params[:teamId])
        @output = @team[0].players.sort_by { |player| -player.wt_loss }
        render 'index.json.jbuilder'
  end
end
