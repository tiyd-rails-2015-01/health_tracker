class Weight < ActiveRecord::Base
  validates :recorded_on, uniqueness: true
  validates :daily_weight, length: {maximum: 5}

  def self.todays_weight
    Weight.all.each do |w|
      if w.recorded_on == Date.today
        return w.daily_weight
      end
    end
  end
end
