class CaloriesConsumedsController < ApplicationController
  before_action :set_calories_consumed, only: [:show, :edit, :update, :destroy]

  # GET /calories_consumeds
  # GET /calories_consumeds.json
  def index
    @calories_consumeds = CaloriesConsumed.all
  end

  # GET /calories_consumeds/1
  # GET /calories_consumeds/1.json
  def show
  end

  # GET /calories_consumeds/new
  def new
    @calories_consumed = CaloriesConsumed.new
  end

  # GET /calories_consumeds/1/edit
  def edit
  end

  # POST /calories_consumeds
  # POST /calories_consumeds.json
  def create
    @calories_consumed = CaloriesConsumed.new(calories_consumed_params)

    respond_to do |format|
      if @calories_consumed.save
        format.html { redirect_to @calories_consumed, notice: 'Calories consumed was successfully created.' }
        format.json { render :show, status: :created, location: @calories_consumed }
      else
        format.html { render :new }
        format.json { render json: @calories_consumed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calories_consumeds/1
  # PATCH/PUT /calories_consumeds/1.json
  def update
    respond_to do |format|
      if @calories_consumed.update(calories_consumed_params)
        format.html { redirect_to @calories_consumed, notice: 'Calories consumed was successfully updated.' }
        format.json { render :show, status: :ok, location: @calories_consumed }
      else
        format.html { render :edit }
        format.json { render json: @calories_consumed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calories_consumeds/1
  # DELETE /calories_consumeds/1.json
  def destroy
    @calories_consumed.destroy
    respond_to do |format|
      format.html { redirect_to calories_consumeds_url, notice: 'Calories consumed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calories_consumed
      @calories_consumed = CaloriesConsumed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calories_consumed_params
      params.require(:calories_consumed).permit(:date, :food, :calories)
    end
end
