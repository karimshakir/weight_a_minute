class WeightsController < ApplicationController
  before_action :authenticate_user

  def index
    @weights =
      Weight.where(player_id: current_user.id)
      render 'index.json.jbuilder'
  end

  def create
    if params[:value] != nil
    # todays_weight = Weight.where("created_at::date = ?", Date.today)
    # if todays_weight.empty?
      weight = Weight.new(
        player_id: current_user.id,
        value: params[:value]
      )
      if weight.save
        render json: { message: 'Weight created successfully' }, status: :created
      else
        render json: { errors: weight.errors.full_messages }, status: :bad_request
      end
    # else
    #   if todays_weight[0].update(value: params[:value])
    #     render json: { message: 'Weight updated successfully' }
    #   else
    #     render json: { errors: todays_weight[0].errors.full_messages }, status: :bad_request
    #   end
    # end
  end
end
end

#   def create
#     todays_weight = Weight.where("created_at::date = ?", Date.today)
#     if todays_weight.empty?
#       weight = Weight.new(
#         player_id: current_user.id,
#         value: params[:value]
#       )
#       if weight.save
#         render json: { message: 'Weight created successfully' }, status: :created
#       else
#         render json: { errors: weight.errors.full_messages }, status: :bad_request
#       end
#     else
#       if todays_weight[0].update(value: params[:value])
#         render json: { message: 'Weight updated successfully' }
#       else
#         render json: { errors: todays_weight[0].errors.full_messages }, status: :bad_request
#       end
#     end
#   end
# end
