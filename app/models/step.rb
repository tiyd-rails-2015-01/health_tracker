class Step < ActiveRecord::Base

  validates :step_amount, presence: true
  validates :step_amount, numericality: true

  def self.total
    total = 0
    Step.all.each do |step|
      total += step.step_amount
    end
    return total
  end
end
