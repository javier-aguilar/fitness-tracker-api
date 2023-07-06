class Log < ApplicationRecord
  validates_presence_of :user_id,
                        :weight,
                        :body_fat,
                        :muscle_mass
  belongs_to :user
  default_scope { order(created_at: :desc) }
end
