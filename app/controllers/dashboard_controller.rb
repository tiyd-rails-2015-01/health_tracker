class DashboardController < ApplicationController
  def status
    @total_exercises= Exercise.count
    @total_weight_lost= Weight.count
    @total_steps= Step.count
    @total_calories_consumed= ConsumedCalorie.count
  end
end
