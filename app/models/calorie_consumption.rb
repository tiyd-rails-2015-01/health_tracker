class CalorieConsumption < ActiveRecord::Base

  def self.calorie_total
    sum(:calorie_intake)
  end
end
