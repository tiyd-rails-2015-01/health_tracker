class Exercise < ActiveRecord::Base
  validates :calories, presence: true

  def self.calories_burned_today
    running_total = 0

    self.all.each do |i|
      if i.timePerformed == Date.today
        running_total += i.calories
      end
    end

    return running_total
    
  end

end
