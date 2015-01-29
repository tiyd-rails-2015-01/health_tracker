class Weight < ActiveRecord::Base
  validates :date, uniqueness: true
end
