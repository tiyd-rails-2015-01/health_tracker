class Weight < ActiveRecord::Base
  validates :entered_on, uniqueness: true
end
