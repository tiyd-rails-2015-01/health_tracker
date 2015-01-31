class Calorie < ActiveRecord::Base

  validates :calories_consumed, presence: true
  validates :calories_consumed, numericality: true
  validates :logged_on, presence: true

  default_scope {order(:logged_on)}

  def self.daily_calories
    cal = Calorie.where(:logged_on== Date.today)
    return cal.sum(:calories_consumed)
  end
end
