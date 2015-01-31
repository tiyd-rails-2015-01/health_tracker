class DashboardController < ApplicationController
  def index
    @calories = Food.calculate_calories
  end
end
