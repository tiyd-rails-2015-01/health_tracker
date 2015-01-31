class Exercise < ActiveRecord::Base
  validates :exercise_performed, presence:  true
  validates :time_in_minutes, presence: true
  validates :time_in_minutes, numericality: true
  validates :logged_on, presence: true


  def calculate_calories
    if exercise_performed == 'Walking'
      return (Weight.last.weight * 0.03 * time_in_minutes).to_i
    elsif exercise_performed == 'Running'
      return (Weight.last.weight * 0.07 * time_in_minutes).to_i
    elsif exercise_performed == 'Jogging'
      return (Weight.last.weight * 0.05 * time_in_minutes).to_i
    else
      raise
    end
  end

  # def self.burned_calories
  #   burn = Exercise.where(:logged_on == Date.today)
  #   return burn.sum(calculate_calories)
  # end
end
