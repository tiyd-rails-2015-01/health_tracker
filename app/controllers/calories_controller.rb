class CaloriesController < ApplicationController

  def calorie_params
    params.require(:calorie).permit(:logged_on, :calories_consumed)
  end

  def index
    @calories = Calorie.all
  end

  def new
    @calorie = Calorie.new
  end

  def create
    @calorie = Calorie.new(calorie_params)
    respond_to do |format|
      if @calorie.save
        format.html { redirect_to @calorie, notice: "Calories were enetered successfully." }
        format.json { render :}
  end
end
