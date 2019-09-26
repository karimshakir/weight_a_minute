class WeightsController < ApplicationController
  before_action :authenticate_user
  def index
    @weights =
    Weight.where(player_id: current_user.id)
    render json: @weights, include: :player
  end

  def rank
    weightlosses = []
      @players = Player.all.order
    end
  end


  def show
    @weights =
      if (params[:id])
        @weights =
        Weight.where(player_id: current_user.id);
        @weightloss = @weights.wtloss
        render json: @weightloss
      end
  end

  def create
    weight = Weight.new(
      player_id: current_user.id,
      value: params[:value]
    )
    if weight.save
      render json: {message: 'Weight created successfully'}, status: :created
    else
      render json: {errors: weight.errors.full_messages}, status: :bad_request
    end
  end

end

