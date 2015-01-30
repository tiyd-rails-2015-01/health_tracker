class Step < ActiveRecord::Base

  def self.total
    total = 0
    Step.all.each do |step|
      total += step.step_amount
    end
    return total
  end
end
