
class Calory < ActiveRecord::Base

  validates :calories_consumed, presence: true
  validates :calories_consumed, numericality: true

  def self.total
    total = 0
    Calory.all.each do |calories|
      total += calories.calories_consumed.to_f
    end
    return total
  end

end
