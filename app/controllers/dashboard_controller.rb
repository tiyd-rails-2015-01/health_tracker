class DashboardController < ApplicationController
  def index
    @calories = Food.calculate_calories
    @exercise = Exercise.calories_burned_today
    @steps = Step.calories_burned_with_steps
    @combined_burn = @exercise + @steps
    @net = @calories - @combined_burn
    # @gain_or_loss = @net > 0 ? "gain" : "loss"
  end
end
