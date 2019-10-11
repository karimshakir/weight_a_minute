class Team < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :players, through: :enrollments

  validates :name, presence: true, uniqueness: true

  def add_creator_to_team(creator_id)
    Enrollment.create(player_id: creator_id, team_id: id)
  end

  def my_rank(player_id)
    players
      .sort_by { |p| -p.wt_loss }
      .find_index { |p| p.id == player_id } + 1
  end

  def self.all_with_current_player(current_user_id)
    teams = []
    all.order(created_at: :desc).each do |team|
      team_with_joined_status = {}
      team_with_joined_status['id'] = team.id
      team_with_joined_status['name'] = team.name

      joined = team.players.map { |p| p.id }.include?(current_user_id)

      team_with_joined_status['joined'] = joined
      team_with_joined_status['rank'] = joined ? team.my_rank(current_user_id) : nil
      teams << team_with_joined_status
    end
    teams
  end
end
