class Weight < ActiveRecord::Base
  validates :weighed_on, presence: true, uniqueness: true
  
end
