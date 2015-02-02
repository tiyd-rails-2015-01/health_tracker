class CaloriesController < ApplicationController
  before_action :set_calory, only: [:show, :edit, :update, :destroy]

  # GET /calories
  # GET /calories.json
  def index
    @calories = Calory.all
    @calories_consumed = Calory.total
  end

  # GET /calories/1
  # GET /calories/1.json
  def show
  end

  # GET /calories/new
  def new
    @calory = Calory.new
  end

  # GET /calories/1/edit
  def edit
  end

  # POST /calories
  # POST /calories.json
  def create
    @calory = Calory.new(calory_params)

    respond_to do |format|
      if @calory.save
        format.html { redirect_to @calory, notice: 'Calory was successfully created.' }
        format.json { render :show, status: :created, location: @calory }
      else
        format.html { render :new }
        format.json { render json: @calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calories/1
  # PATCH/PUT /calories/1.json
  def update
    respond_to do |format|
      if @calory.update(calory_params)
        format.html { redirect_to @calory, notice: 'Calory was successfully updated.' }
        format.json { render :show, status: :ok, location: @calory }
      else
        format.html { render :edit }
        format.json { render json: @calory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calories/1
  # DELETE /calories/1.json
  def destroy
    @calory.destroy
    respond_to do |format|
      format.html { redirect_to calories_url, notice: 'Calory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calory
      @calory = Calory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calory_params
      params.require(:calory).permit(:calories_consumed, :calories_on)
    end
end
