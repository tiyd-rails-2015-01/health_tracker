class HomeController < ApplicationController
  def home
    @total= Calorie.total - Exercise.total
  end
end

#if Calorie.c_total.blank?
#            @f_total = (0-@e_total)
#          elsif Exercise.e_total.blank?
#            @f_total = @c_total
#          else
#            @f_total = Calorie.c_total-Exercise.e_total
#          end
#
