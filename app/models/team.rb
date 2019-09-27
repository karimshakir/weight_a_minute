class Team < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :players, through: :enrollments

  def add_creator_to_team(creator_id)
    Enrollment.create(player_id: creator_id, team_id: id)
  end

end
