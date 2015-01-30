class ExercisesPerformed < ActiveRecord::Base
  validates :reps_performed, presence: true, allow_blank: true
  validates :distance, presence: true, allow_blank: true
  def self.total
    sum(:calories_burned)

  end

  def self.calories_burned_today
    sum = 0
    ExercisesPerformed.all.each do |s|
      if s.date == Date.today
        sum += s.calories_burned
      end
    end
    sum
  end

end
