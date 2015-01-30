class Calorie < ActiveRecord::Base
  def self.c_total

      total = 0
      calorie_array = []
      Calorie.where('entered_on BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all.each do |calorie|
        calorie_array << calorie.calorie
      end
      total = calorie_array.reduce(:+)
      return total
  end
end
