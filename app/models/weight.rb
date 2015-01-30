class Weight < ActiveRecord::Base
  validates :recorded_on, uniqueness: true
  validates :daily_weight, length: {maximum: 5}

  def self.todays_weight
    if Weight.where(recorded_on: Date.today).first
      Weight.where(recorded_on: Date.today).first.daily_weight
    else
      0.0
    end
  end
end
