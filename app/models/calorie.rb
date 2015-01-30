class Calorie < ActiveRecord::Base

  validates :calories_consumed, presence: true
  validates :calories_consumed, numericality: true
  validates :logged_on, presence: true

  default_scope {order(:logged_on)}
end
