class EnrollmentsController < ApplicationController
before_action :authenticate_user

  def create
      enrollment = Enrollment.new(
                                  player_id: current_user.id,
                                  team_id: params[:team_id]
                                  )
    if enrollment.save
        render json: {message: 'Enrollment created successfully'}, status: :created
    else
        render json: {errors: enrollment.errors.full_messages}, status: :bad_request
    end
  end
end

