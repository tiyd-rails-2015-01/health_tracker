class Step < ActiveRecord::Base
  validates :steps_taken, presence: true
end
