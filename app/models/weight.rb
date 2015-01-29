class Weight < ActiveRecord::Base

  validates :logged_on, uniqueness: true
end
