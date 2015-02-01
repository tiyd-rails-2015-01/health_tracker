class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def total_steps
    @steps = Step.all
    total = 0
    @steps.each do |step|
      total += step.steps_taken unless step.steps_taken.nil?
    end
    @steps_total = total
  end

  def calories_burned
    @exercises = Exercise.all
    total = 0
    @exercises.each do |exercise|
      total += exercise.calories_burned unless exercise.calories_burned.nil?
    end
    @calories_burned_total = total
  end

  def calories_consumed
    @calories = Calorie.all
    total =  0
    @calories.each do |calorie|
      total += calorie.calories_consumed unless calorie.calories_consumed.nil?
    end
    @calories_consumed_total = total
  end

  def calories_consumed_vs_burned
    net_calories = @calories_consumed_total - @calories_burned_total
    @net_calories = net_calories
  end

  def movivational_quote
    if @net_calories <= 0
      @quote = "Great work, keep up the exercise!"
    else
      @quote = "You need to exercise more!"
    end
  end

end
