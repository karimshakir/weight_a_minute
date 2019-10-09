class Weight < ApplicationRecord
  belongs_to :player
  default_scope { order(created_at: :desc) }

  validates :value, presence: true
end
