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
    @daily_calories_burned = Exercise.daily_calories_burned
    @total_burned_calories = Exercise.total_burned_calories
    @total_consumed_calories = Calorie.total_consumed_calories
    @total_calories = @total_consumed_calories - @total_burned_calories
    # @daily_calories_burned = Exercise.last.calculate_calories

  end

end
