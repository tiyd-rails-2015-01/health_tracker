class Weight < ActiveRecord::Base

  validates :logged_on, uniqueness: true
  validates :logged_on, presence: true
  validates :weight, numericality: true
  validates :weight, presence: true

  def self.calories_burned_per_minute(activity)
    if activity == 'Walking'
      return Weight.last.weight * 0.03
    elsif activity == 'Running'
      return Weight.last.weight * 0.07
    else activity == 'Jogging'
      return Weight.last.weight * 0.05
    end
  end
end
