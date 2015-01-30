class Exercise < ActiveRecord::Base

  def self.exercise_count(exercise)
    total = 0
    Exercise.all.each do |exercise|
      if exercise == exercise.exercise_type
        total += exercise.exercise_amount.to_f
      end
    end
    return total
  end


    def self.total_calories
      total = 0
      Exercise.all.each do |exercise|
        total += exercise.calories_consumed.to_f
      end
      return total
    end

end
