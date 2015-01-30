class CaloriesController < ApplicationController
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]

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
        format.html { redirect_to @calorie, notice: "Calories were entered successfully." }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @calorie.update(calories_params)
        format.html { redirect_to @calorie, notice: 'Calories logged successfully.'}
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @calorie.update(calorie_params)
        format.html { redirect_to @calorie, notice: 'Calories logged successfully.'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @calorie.destroy
    respond_to do |format|
      format.html { redirect_to calories_url, notice: 'Calories deleted successfully.'}
    end
  end

  private def set_calorie
      @calorie = Calorie.find(params[:id])
  end

  private def calorie_params
      params.require(:calorie).permit(:logged_on, :calories_consumed)
  end
end
