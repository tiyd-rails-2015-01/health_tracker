class HomeController < ApplicationController

  def index
    @calorie_count = CalorieConsumption.calorie_total
    @exercise_burn = Exercise.burnt_calories
    @step_count_burn = StepCount.step_calorie_burn
    @daily_steps = StepCount.steps_taken
    @todays_calories = CalorieConsumption.calorie_total - (Exercise.burnt_calories + StepCount.step_calorie_burn)
  end
end
