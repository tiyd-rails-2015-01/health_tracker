class CaloriesController < ApplicationController
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]

  # GET /calories
  # GET /calories.json
  def index
    calories_consumed
  end

  # GET /calories/1
  # GET /calories/1.json
  def show
  end

  # GET /calories/new
  def new
    @calorie = Calorie.new
  end

  # GET /calories/1/edit
  def edit
    @calorie = Calorie.new(params[:meal_selector])
  end

  # POST /calories
  # POST /calories.json
  def create
    @calorie = Calorie.new(calorie_params)

    respond_to do |format|
      if @calorie.save
        format.html { redirect_to @calorie, notice: 'Calorie was successfully created.' }
        format.json { render :show, status: :created, location: @calorie }
      else
        format.html { render :new }
        format.json { render json: @calorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calories/1
  # PATCH/PUT /calories/1.json
  def update
    respond_to do |format|
      if @calorie.update(calorie_params)
        format.html { redirect_to @calorie, notice: 'Calorie was successfully updated.' }
        format.json { render :show, status: :ok, location: @calorie }
      else
        format.html { render :edit }
        format.json { render json: @calorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calories1
  # DELETE /calories/1.json
  def destroy
    @calorie.destroy
    respond_to do |format|
      format.html { redirect_to calories_url, notice: 'Calorie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_calorie
    @calorie = Calorie.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def calorie_params
    params.require(:calorie).permit(:date, :meal, :calories_consumed)
  end
end
