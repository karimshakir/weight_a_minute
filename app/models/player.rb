class Player < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :teams, through: :enrollments

  has_many :weights, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  def wt_loss
    return 0 if weights.length <= 1
    weights.last.value - weights.first.value
  end
end
