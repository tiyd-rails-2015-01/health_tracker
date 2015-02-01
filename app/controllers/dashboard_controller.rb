class DashboardController < ApplicationController
  def index
    @calories = Food.calculate_calories
    @exercise = Exercise.calories_burned_today
    @steps = Step.calories_burned_with_steps
    @combined_burn = @exercise + @steps
    @net = @calories - @combined_burn
    @todays_foods = Food.todays_foods
    @todays_exercise = Exercise.todays_exercise
    @todays_steps = Step.todays_steps
    @todays_weight = Weight.todays_weight
  end
end
