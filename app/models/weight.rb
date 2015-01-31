class Weight < ActiveRecord::Base
  validates :weighed_on, presence: true, uniqueness: true

  def self.todays_weight
    self.all.each do |i|
      if i.weighed_on == Date.today
        return i.weight
      end
    end
  end
end
