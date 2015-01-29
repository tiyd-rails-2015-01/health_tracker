class CalorieConsumptionsController < ApplicationController
  before_action :set_calorie_consumption, only: [:show, :edit, :update, :destroy]

  # GET /calorie_consumptions
  # GET /calorie_consumptions.json
  def index
    @calorie_consumptions = CalorieConsumption.all
  end

  # GET /calorie_consumptions/1
  # GET /calorie_consumptions/1.json
  def show
  end

  # GET /calorie_consumptions/new
  def new
    @calorie_consumption = CalorieConsumption.new
  end

  # GET /calorie_consumptions/1/edit
  def edit
  end

  # POST /calorie_consumptions
  # POST /calorie_consumptions.json
  def create
    @calorie_consumption = CalorieConsumption.new(calorie_consumption_params)

    respond_to do |format|
      if @calorie_consumption.save
        format.html { redirect_to @calorie_consumption, notice: 'Calorie consumption was successfully created.' }
        format.json { render :show, status: :created, location: @calorie_consumption }
      else
        format.html { render :new }
        format.json { render json: @calorie_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calorie_consumptions/1
  # PATCH/PUT /calorie_consumptions/1.json
  def update
    respond_to do |format|
      if @calorie_consumption.update(calorie_consumption_params)
        format.html { redirect_to @calorie_consumption, notice: 'Calorie consumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @calorie_consumption }
      else
        format.html { render :edit }
        format.json { render json: @calorie_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calorie_consumptions/1
  # DELETE /calorie_consumptions/1.json
  def destroy
    @calorie_consumption.destroy
    respond_to do |format|
      format.html { redirect_to calorie_consumptions_url, notice: 'Calorie consumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calorie_consumption
      @calorie_consumption = CalorieConsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calorie_consumption_params
      params.require(:calorie_consumption).permit(:consumed_on, :food, :calorie_intake)
    end
end
