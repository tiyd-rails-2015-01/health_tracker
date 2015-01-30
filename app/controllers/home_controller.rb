class HomeController < ApplicationController

  def index
    @calorie_count = CalorieConsumption.calorie_total
    @exercise_burn = Exercise.burnt_calories
  end
end
