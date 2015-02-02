class HomeController < ApplicationController

  def dashboard
    @net_calories = CaloriesConsumed.calories_consumed_today - ExercisesPerformed.calories_burned_today
  end

end
