class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
    @exercises = Exercise.all
    total = 0
    @exercises.each do |exercise|
      total += exercise.calories_burned unless exercise.calories_burned.nil?
    end
    @total_amount = total
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
  end

  # GET /exercises/new
  def new
    @exercise = Exercise.new
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @exercise = Exercise.new(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'Exercise was successfully created.' }
        format.json { render :show, status: :created, location: @exercise }
      else
        format.html { render :new }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise }
      else
        format.html { render :edit }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url, notice: 'Exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # Use callbacks to share common setup or constraints between actions.
  private def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private def exercise_params
    params.require(:exercise).permit(:date, :type_of_exercise, :calories_burned)
  end

end
