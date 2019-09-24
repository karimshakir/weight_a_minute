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

  def destroy
    enrollment = Enrollment.destroy(
      enrollment_id: params[:name]
    )
    # if happy_path
    #   render json: {message: 'Team created deleted'}, status: :created
    # else
    #   render json: {errors: enrollment.errors.full_messages}, status: :bad_request
    # end
  end
end


def destroy
  @enrollment = Enrollment.find(params[:id])
  @enrollment.destroy

  render json: {message: 'Enrollment destroyed successfully'}, status: :deleted

  # redirect_to articles_path, notice: "Delete success"

end

