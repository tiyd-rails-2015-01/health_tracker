class DashboardController < ApplicationController
  def status
    @total_exercises= Exercise.sum(:duration)
    @entered_weight= Weight.sum(:user_weight)
    @total_weight_lost= Weight.sum(:user_weight)
    @total_steps= Step.sum(:steps_taken)
    @total_calories_consumed= Joule.sum(:consumed_joules)
    @num_weights =Weight.count

    graph=[@total_exercises, @total_weight_lost, @total_steps, @total_calories_consumed]
    @total=graph.reduce(:+)

    if @total_weight_lost> 0
      @latest_weight= Weight.last.user_weight
    end


    if @num_weights> 0 && @total_exercises > 0
      @net_calories = Exercise.calories_burned.to_f-Joule.calories_entered_today
    end
    @exercises_percent=(@total_exercises/@total) * 100
    @weight_lost_percent=(@total_weight_lost/@total) * 100
    @steps_percent=(@total_steps/@total) * 100
    @calories_percent=(@total_calories_consumed/@total) * 100

  end

end
