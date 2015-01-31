class Step < ActiveRecord::Base
  def self.calories_burned_with_steps
    running_total = 0

    self.all.each do |i|
      if i.timePerformed == Date.today
        running_total += i.steps / 20
      end
    end

    return running_total
  end

  def self.todays_steps
    steps = []

    self.all.each do |i|
      if i.timePerformed == Date.today
        steps << i
      end
    end

    return steps
  end
end
