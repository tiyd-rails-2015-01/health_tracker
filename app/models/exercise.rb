class Exercise < ActiveRecord::Base

  validates :exercise_amount, presence: true
  validates :exercise_amount, numericality: true
  validates :calories_consumed, presence: true
  validates :calories_consumed, numericality: true


  def self.exercise_count(exercise)
    total = 0.0
    Exercise.all.each do |e|
      if exercise == e.exercise_type
        total += e.exercise_amount.to_f
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

  # def calculate_calories
  #   exercise_type
  #   exercise_amount
  #   result =
  #   return result
  # end

end
