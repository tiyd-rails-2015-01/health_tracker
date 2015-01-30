class DashboardController < ApplicationController

  def home
    if @weight = Weight.last
      @weight = Weight.last.weight
    else
      @weight = 0
    end

    if @step = Step.last
      @step = Step.last.steps_taken
    else
      @step = 0
    end

    if @calories = Calorie.last
      @calories = Calorie.last.calories_consumed
    else
      @calories = 0
    end
  end

end
