class WeightsController < ApplicationController
  before_action :authenticate_user
  def index

    @weights = Weight.where(player_id: 2).order(:created_at).pluck(:player_id,:value)
    # @weights = Weight.where(player_id: current_user.id).order(:created_at)

    render 'index.json.jbuilder'
  end

  def show

    @weights = Weight.where(player_id: 2).last.pluck(:player_id,:value)
    # @weights = Weight.where(player_id: current_user.id).order(:created_at)

    render 'index.json.jbuilder'
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

#   def index
#     addiction_id_filter = params[:addiction_id] if params[:addiction_id]
#     @addiction_occurrences = AddictionOccurrence.where(user_id: current_user.id).order(:created_at)

#     if addiction_id_filter
#       @addiction_occurrences = @addiction_occurrences.where(addiction_id: addiction_id_filter)
#     end
#     render 'index.json.jbuilder'
#   end
# end
