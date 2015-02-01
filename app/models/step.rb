class Step < ActiveRecord::Base
  validates :steps_taken, numericality: true
end
