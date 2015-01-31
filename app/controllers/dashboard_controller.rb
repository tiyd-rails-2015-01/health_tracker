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

    if @exercise = Exercise.last
      @exercise = Exercise.last.exercise_performed
    else
      @exercise = 0
    end

    if @time = Exercise.last
      @time = Exercise.last.time_in_minutes
    else
      @time = 0
    end

    @daily_calories = Calorie.daily_calories

  #  @total_calories = (Exercise.calculate_calories) - (Calorie.calories_consumed)
  end

end
