class Food < ActiveRecord::Base

  def self.calculate_calories
    running_total = 0

    self.all.each do |i|
      if i.eaten_on == Date.today
        running_total += i.calories
      end
    end

    return running_total
  end

  def self.todays_foods
    foods = []

    self.all.each do |i|
      if i.eaten_on == Date.today
        foods << i
      end
    end

    return foods
  end

end
