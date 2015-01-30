class Exercise < ActiveRecord::Base

  def self.pushups
    total = 0
    Exercise.all.each do |exercise|
      total += exercise.exercise_amount.to_f
    end
    return total
  end

  def self.situps
    total = 0
    Exercise.all.each do |exercise|
      total += exercise.exercise_amount.to_f
    end
    return total
  end

  def self.squat_thrusts
    total = 0
    Exercise.all.each do |exercise|
      total += exercise.exercise_amount.to_f
    end
    return total
  end

  def self.calories
    total = 0
    Exercise.all.each do |calories|
      calories += calories_consumed.exercise_amount.to_f
    end
    return total
  end
end
