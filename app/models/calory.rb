
class Calory < ActiveRecord::Base


  def self.total
    total = 0
    Calory.all.each do |calories|
      total += calories.calories_consumed.to_f
    end
    return total
  end

end
