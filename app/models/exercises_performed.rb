class ExercisesPerformed < ActiveRecord::Base
  validates :reps_performed, presence: true, allow_blank: true
  validates :distance, presence: true, allow_blank: true

  def self.total
    sum(:calories_burned)

  end

end
