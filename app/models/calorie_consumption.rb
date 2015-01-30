class CalorieConsumption < ActiveRecord::Base
  def self.calorie_total
    sum = 0
    CalorieConsumption.all.each do |s|
      if s.consumed_on >= DateTime.now.beginning_of_day &&
         s.consumed_on <= DateTime.now.end_of_day
        sum += s.calorie_intake
      end
    end
    sum
  end
end
