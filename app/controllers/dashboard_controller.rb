class DashboardController < ApplicationController
  def status
    @total_exercises= Exercise.sum(:duration)
    @total_steps= Step.sum(:steps_taken)
    @todays_calories= Joule.calories_entered_today
    @num_weights =Weight.count
    @total_weight_lost= 0
    @net_calories_today= Exercise.net_calories_today
    @calories_burned_today= Exercise.calories_burned_today

    if @num_weights == 0
      @total_weight_lost= 0
    end
    if @total_exercises ==0
      @calories_burned= 0
    end

    @latest_weight= Weight.last.user_weight
    @total_weight_lost= Weight.first.user_weight - Weight.last.user_weight
    graph=[@total_exercises, @total_weight_lost, @total_steps]
    @total=graph.reduce(:+)
    @exercises_percent=(@total_exercises/@total) * 100
    @weight_lost_percent=(@total_weight_lost/@total) * 100
    @steps_percent=(@total_steps/@total) * 100

  end

end
