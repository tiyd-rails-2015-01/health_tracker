class HomeController < ApplicationController
  def home
    @c_total= Calorie.c_total
  end
end
