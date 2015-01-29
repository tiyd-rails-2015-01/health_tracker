class Step < ActiveRecord::Base

  validates :steps_taken, presence: true
  validates :steps_taken, numericality: true
  validates :logged_on, presence: true
end
