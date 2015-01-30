class Exercise < ActiveRecord::Base
  validates :exercise_performed, presence:  true
  validates :time_in_minutes, presence: true
  validates :time_in_minutes, numericality: true
  validates :logged_on, presence: true
  # def self.calories_consumed
  #   @weight.to_i
  #   i = 0
  #   while i < @weight.length
  #     @walking_total = 0.03 * @weight
  #
  #     #  return total
  #   end
  # end

end
