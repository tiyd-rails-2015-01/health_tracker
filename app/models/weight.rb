class Weight < ActiveRecord::Base
  validates :weight, presence: true
  validates_uniqueness_of :recorded_on
end
