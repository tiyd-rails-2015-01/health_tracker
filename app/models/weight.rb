class Weight < ActiveRecord::Base
  validates :weight, presence: true
end
