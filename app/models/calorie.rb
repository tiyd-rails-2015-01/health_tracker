class Calorie < ActiveRecord::Base

  validates :calories_consumed, presence: true
  validates :calories_consumed, numericality: true
  validates :logged_on, presence: true

  default_scope {order(:logged_on)}

  def self.daily_calories
    cal = Calorie.where(logged_on: Date.today)
    total = 0
      cal.each do |calorie|
        total += calorie.calories_consumed
      end
      return total
  end

  def self.total_consumed_calories
    total = 0
    Calorie.all.each do |calorie|
      total += calorie.calories_consumed
    end
    return total
  end
end
