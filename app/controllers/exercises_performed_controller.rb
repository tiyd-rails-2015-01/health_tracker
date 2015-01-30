class ExercisesPerformedController < ApplicationController
  before_action :set_exercises_performed, only: [:show, :edit, :update, :destroy]

  def index
    @exercises_performeds = ExercisesPerformed.all
  end

  def show
  end

  def new
    @exercises_performed = ExercisesPerformed.new
  end

  def edit
  end

  def create
    @exercises_performed = StepsTaken.new(steps_taken_params)

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
      if @exercises_performed.update(steps_taken_params)
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

end
