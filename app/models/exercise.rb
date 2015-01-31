class Exercise < ActiveRecord::Base
  validates :calories, presence: true
end
