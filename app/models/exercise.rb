class Exercise < ActiveRecord::Base
  attr_reader :daily_calories_burned
  validates :exercise_type, presence: true
  validates :duration, numericality: true
  validates :duration, presence: true
  default_scope { order('created_at') }
  @calories_burned=[]

  def self.calories_burned
    if Weight.count> 0 && Exercise.sum(:duration) > 0
      if Exercise.last.exercise_type == "Running"
        recent_calories_burned = 0.083* Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
        @calories_burned << recent_calories_burned.to_i
      elsif Exercise.last.exercise_type == "Swimming"
        recent_calories_burned = 0.03 * Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
        @calories_burned << recent_calories_burned.to_i
      elsif Exercise.last.exercise_type == "Biking"
        recent_calories_burned = 0.06 * Weight.where(:added_on== Date.today).last.user_weight * Exercise.last.duration
        @calories_burned << recent_calories_burned.to_i
      end
      return @calories_burned.reduce(:+)
    end
  end

  def self.net_calories
    if Weight.count> 0 && Exercise.sum(:duration) > 0
      net_calories = Joule.calories_entered_today - Exercise.calories_burned
    end
  end

end
