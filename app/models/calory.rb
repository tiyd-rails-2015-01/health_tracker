
class Calory < ActiveRecord::Base


  def self.total
    total = 0
    Calory.all.each do |calories|
      total += calories.calories_consumed
    end
    return total
  end

end
