class ConsumedCaloriesController < ApplicationController
  before_action :set_consumed_calory, only: [:show, :edit, :update, :destroy]

  # GET /consumed_calories
  # GET /consumed_calories.json
  def index
    @consumed_calories = ConsumedCalorie.all
  end

  # GET /consumed_calories/1
  # GET /consumed_calories/1.json
  def show
  end

  # GET /consumed_calories/new
  def new
    @consumed_calory = ConsumedCalorie.new
  end

  # GET /consumed_calories/1/edit
  def edit
  end

  # POST /consumed_calories
  # POST /consumed_calories.json
  def create
    @consumed_calory = ConsumedCalorie.new(consumed_calory_params)

    respond_to do |format|
      if @consumed_calory.save
        format.html { redirect_to @consumed_calory, notice: 'Consumed calorie was successfully created.' }
        format.json { render :show, status: :created, location: @consumed_calory }
      else
        format.html { render :new }
        format.json { render json: @consumed_calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumed_calories/1
  # PATCH/PUT /consumed_calories/1.json
  def update
    respond_to do |format|
      if @consumed_calory.update(consumed_calory_params)
        format.html { redirect_to @consumed_calory, notice: 'Consumed calorie was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumed_calory }
      else
        format.html { render :edit }
        format.json { render json: @consumed_calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumed_calories/1
  # DELETE /consumed_calories/1.json
  def destroy
    @consumed_calory.destroy
    respond_to do |format|
      format.html { redirect_to consumed_calories_url, notice: 'Consumed calorie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumed_calory
      @consumed_calory = ConsumedCalorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumed_calory_params
      params.require(:consumed_calory).permit(:calorie_amount, :meal_type, :consumed_on)
    end
end
