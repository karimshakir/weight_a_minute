class Player < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :teams, through: :enrollments

  has_many :weights, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
