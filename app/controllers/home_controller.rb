class HomeController < ApplicationController

  def index
    @calorie_count = CalorieConsumption.calorie_total
  end
end
