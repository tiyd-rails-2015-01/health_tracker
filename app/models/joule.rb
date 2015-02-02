class Joule < ActiveRecord::Base
  validates :consumed_joules, numericality: true
  def self.calories_entered_today
    js= Joule.where(added_on: Date.today)
    return js.sum(:consumed_joules)
  end

end
