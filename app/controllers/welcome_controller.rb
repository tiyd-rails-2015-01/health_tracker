class WelcomeController < ApplicationController

  def index
    @ex_cals = Exercise.total_calories
    @total_cals = Calory.total
    @daily_cals = all_calories

  end

  def all_calories
    total = 0
      total = @total_cals - @ex_cals

    return total

  end

  def all_calories
    total = 0
    total = @total_cals - @ex_cals
  end
end
