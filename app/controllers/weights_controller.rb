class WeightsController < ApplicationController
  def index

    @weights = Weight.where(player_id: current_user.id).order(:created_at)

    render 'index.html.erb'
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
