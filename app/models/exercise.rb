class Exercise < ActiveRecord::Base
  validates :type_of_exercise, presence: true
  validates :calories_burned, presence: true
end
