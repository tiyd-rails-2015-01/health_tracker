class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def self.pushups
    total = 0
    Exercise.all.each do |exercise|
      total += exercise.exercise_amount.to_f
    end
    return total
  end

end
