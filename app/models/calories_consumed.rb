class CaloriesConsumed < ActiveRecord::Base

  def self.calories_consumed_today
    sum = 0
    CaloriesConsumed.all.each do |s|
      if s.date == Date.today
        sum += s.calories
      end
    end
    sum
  end

end
