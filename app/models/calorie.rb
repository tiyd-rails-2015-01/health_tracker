class Calorie < ActiveRecord::Base
  validates :calories_consumed, presence: true


end
