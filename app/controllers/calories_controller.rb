class CaloriesController < ApplicationController
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
    @calories = Calorie.all
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
  end

  # GET /weights/new
  def new
    @calorie = Calorie.new
  end

  # GET /weights/1/edit
  def edit
  end

  # POST /weights
  # POST /weights.json
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

  # PATCH/PUT /weights/1
  # PATCH/PUT /weights/1.json
  def update
    respond_to do |format|
      if @weight.update(weight_params)
        format.html { redirect_to @calorie, notice: 'Calorie was successfully updated.' }
        format.json { render :show, status: :ok, location: @calorie }
      else
        format.html { render :edit }
        format.json { render json: @calorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
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
    params.require(:calorie).permit(:recorded_on, :calorie)
  end
end
