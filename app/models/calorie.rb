class Calorie < ActiveRecord::Base
  def self.total

      total = 0
      calorie_array = []
      Calorie.where(entered_on: Date.today).all.each do |calorie|
        calorie_array << calorie.calorie
      end
      total = calorie_array.reduce(:+)
      return total
  end
end
