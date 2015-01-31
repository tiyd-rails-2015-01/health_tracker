class StepCount < ActiveRecord::Base
  def self.steps_taken
    sum = 0
    StepCount.all.each do |s|
      if s.taken_on >= DateTime.now.beginning_of_day &&
        s.taken_on <= DateTime.now.end_of_day
        sum += s.step_count
      end
    end
    sum
  end

  def self.step_calorie_burn
    calories_per_mile = Weight.todays_weight.to_f * 0.57
    calorie_burn = calories_per_mile / (2200 / self.steps_taken.to_f)
    return calorie_burn.round(1)
  end
end
