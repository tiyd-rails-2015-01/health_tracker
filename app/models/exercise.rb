class Exercise < ActiveRecord::Base
  validates :exercise_type, presence: true
  validates :duration, numericality: true
  default_scope { order('created_at') }


  def self.calories_burned_today
    calories_burned=[]
    exercise_today= Exercise.where(added_on: Date.today)
    if Weight.count> 0 && exercise_today.sum(:duration) > 0
      calories_burned=exercise_today.all.map do |exercise|
      if exercise.exercise_type == "Running"
        recent_calories_burned = (0.083* Weight.last.user_weight * exercise.duration).to_i
      elsif exercise.exercise_type == "Swimming"
        recent_calories_burned = (0.03 * Weight.last.user_weight * exercise.duration).to_i
      elsif exercise.exercise_type == "Biking"
        recent_calories_burned = (0.06 * Weight.last.user_weight * exercise.duration).to_i
      end
    end
      return calories_burned.reduce(:+)
    end
  end


  def self.net_calories_today
    exercise_today= Exercise.where(added_on: Date.today)
    if Weight.count> 0 && exercise_today.sum(:duration) > 0
      net_calories = Joule.calories_entered_today - Exercise.calories_burned_today
    end
  end


end
