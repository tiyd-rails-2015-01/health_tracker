class DashboardController < ApplicationController

  def home
    @weight = Weight.last.weight
    @step = Step.last.steps_taken
    @calories = Calorie.last.calories_consumed
  end

end
