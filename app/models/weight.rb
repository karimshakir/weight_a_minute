class Weight < ApplicationRecord
  belongs_to :player
  default_scope { order(created_at: :desc) }

  def self.wtloss
   self.last.value - self.first.value
  end

end
