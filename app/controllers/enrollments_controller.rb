class EnrollmentsController < ApplicationController
before_action :authenticate_user
  def index
    @enrollments = Enrollment.all
    render json: @enrollments
  end

  def show
    @enrollment =
      if (params[:id])
        Enrollment.find_by(
                            player_id: current_user.id,
                            team_id: params[:id]
                          )
      end
    render json: @enrollment
  end

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

  def destroy
    @enrollment =
      if (params[:id])
        Enrollment.find_by(
                            player_id: current_user.id,
                            team_id: params[:id]
                          )
      end
      @enrollment.destroy
    render json: {message: 'Enrollment destroyed'}
  end



end
