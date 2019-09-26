class Team < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :players, through: :enrollments


end
