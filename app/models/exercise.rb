class Exercise < ActiveRecord::Base

  def self.burnt_calories
    sum = 0
    Exercise.all.each do |e|
      if e.performed_on >= DateTime.now.beginning_of_day &&
        e.performed_on <= DateTime.now.end_of_day
        sum += e.calorie_burn
      end
    end
    sum
  end
end
