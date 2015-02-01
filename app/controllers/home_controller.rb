class HomeController < ApplicationController
  def index
    total_steps
    calories_burned
    calories_consumed
    calories_consumed_vs_burned
    movivational_quote
  end
end
