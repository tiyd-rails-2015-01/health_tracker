class Weight < ActiveRecord::Base

   validates :weight_on, :uniqueness => {:date => false}

  def self.total
    total = 0
    Weight.all.each do |weight|
      total = (weight.weight_amount - total)
    end
    return total
  end


end
