class ExercisesPerformedsController < ApplicationController
  before_action :set_exercises_performed, only: [:show, :edit, :update, :destroy]

  def index
    @exercises_performeds = ExercisesPerformed.all.order(:date)
    @total = ExercisesPerformed.total.to_f
    @calories_burned = ExercisesPerformed.calories_burned_today
  end

  def show
  end

  def new
    @exercises_performed = ExercisesPerformed.new
  end

  def edit
  end

  def create
    @exercises_performed = ExercisesPerformed.new(exercises_performed_params)

    respond_to do |format|
      if @exercises_performed.save
        format.html { redirect_to @exercises_performed, notice: 'Exercises performed was successfully created.' }
        format.json { render :show, status: :created, location: @exercises_performed }
      else
        format.html { render :new }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @exercises_performed.update(exercises_performed_params)
        format.html { redirect_to @exercises_performed, notice: 'Exercises performed was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercises_performed }
      else
        format.html { render :edit }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercises_performed.destroy
    respond_to do |format|
      format.html { redirect_to exercises_performeds_url, notice: 'Exercises performed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_exercises_performed
    @exercises_performed = ExercisesPerformed.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercises_performed_params
    params.require(:exercises_performed).permit(:date, :exercise_name, :reps_performed, :distance, :calories_burned)
  end

end
