class Weight < ActiveRecord::Base
  validates :recorded_on, uniqueness: true
  validates :daily_weight, length: {maximum: 5}
end
