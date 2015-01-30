class DashboardController < ApplicationController
  def status
    @total_exercises= Exercise.sum(:duration)
    @total_weight_lost= Weight.sum(:user_weight)
    @total_steps= Step.sum(:steps_taken)
    @total_calories_consumed= ConsumedCalorie.sum(:calorie_amount)

    graph=[@total_exercises, @total_weight_lost, @total_steps, @total_calories_consumed]
    @graph=graph.sort.reverse!

    @graph_hash={@graph[0]=>"height: 95%;", "Weight lost"=>@total_weight_lost, "Steps"=>@total_steps, "Calories Consumed"=>@total_calories_consumed}

  end

end
