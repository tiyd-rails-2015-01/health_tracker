class Weight < ActiveRecord::Base

  validates :logged_on, uniqueness: true
  validates :logged_on, presence: true
  validates :weight, numericality: true
  validates :weight, presence: true
end
