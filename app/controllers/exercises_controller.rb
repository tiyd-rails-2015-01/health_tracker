class ExercisesController < ApplicationController

before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def show
  end

  def edit
  end

  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url, notice: 'Exercises were successfully destroyed.' }
    end
  end

  def create
    @exercise = Exercise.new(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'Exercises were successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def exercise_params
    params.require(:exercise).permit(:entered_on, :exercise)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
