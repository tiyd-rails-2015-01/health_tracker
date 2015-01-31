class CalorieConsumption < ActiveRecord::Base
  def self.calorie_total
    sum = 0
    CalorieConsumption.all.each do |c|
      if c.consumed_on >= DateTime.now.beginning_of_day &&
         c.consumed_on <= DateTime.now.end_of_day
        sum += c.calorie_intake
      end
    end
    sum
  end
end
