class Exercise < ActiveRecord::Base
  #"Cardio","Strength Training","Spin Class","Jazzercise","Kick-boxing"
  def self.e_total
      total = 0
      Exercise.where('entered_on BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all.each do |exercise|
        if exercise.exercise == "Cardio"
          total += 150
        elsif exercise.exercise == "Strength Training"
          total += 250
        elsif exercise.exercise == "Spin Class"
          total += 200
        elsif exercise.exercise == "Jazzercise"
          total += 500
        elsif exercise.exercise == "Kick-boxing"
          total += 100
        end
      end
      return total
  end
end
