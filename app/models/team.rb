class Team < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :players, through: :enrollments

  validates :name, presence: true, uniqueness: true
  default_scope { order(created_at: :desc) }

  def add_creator_to_team(creator_id)
    Enrollment.create(player_id: creator_id, team_id: id)
  end

  def my_rank(player_id)
    players
      .sort_by { |p| -p.wt_loss }
      .find_index { |p| p.id == player_id } + 1
  end
end
