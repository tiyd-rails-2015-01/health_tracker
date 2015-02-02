class Weight < ActiveRecord::Base
  validates :added_on, uniqueness: true
  validates :user_weight, numericality: true

  default_scope { order('added_on') }


end
