class Exercise < ActiveRecord::Base
  attr_reader :daily_calories_burned
  validates :exercise_type, presence: true
  default_scope { order('added_on') }
  @daily_calories_burned= 0

  def self.calories_burned
    if Exercise.last.added_on != Date
      @daily_calories_burned= 0
    end
    if Weight.count> 0 && Exercise.sum(:duration) > 0
      if Exercise.last.exercise_type == "Running"
        calories_burned = 0.083* Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
      elsif Exercise.last.exercise_type == "Swimming"
        calories_burned = 0.03 * Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
      elsif Exercise.last.exercise_type == "Biking"
        calories_burned = 0.06 * Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
      end
      @daily_calories_burned += calories_burned
      return calories_burned
    end
  end

end
