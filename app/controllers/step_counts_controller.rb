class StepCountsController < ApplicationController
  before_action :set_step_count, only: [:show, :edit, :update, :destroy]

  # GET /step_counts
  # GET /step_counts.json
  def index
    @step_counts = StepCount.all
    @daily_steps = StepCount.steps_taken
  end

  # GET /step_counts/1
  # GET /step_counts/1.json
  def show
  end

  # GET /step_counts/new
  def new
    @step_count = StepCount.new
  end

  # GET /step_counts/1/edit
  def edit
  end

  # POST /step_counts
  # POST /step_counts.json
  def create
    @step_count = StepCount.new(step_count_params)

    respond_to do |format|
      if @step_count.save
        format.html { redirect_to @step_count, notice: 'Step count was successfully created.' }
        format.json { render :show, status: :created, location: @step_count }
      else
        format.html { render :new }
        format.json { render json: @step_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_counts/1
  # PATCH/PUT /step_counts/1.json
  def update
    respond_to do |format|
      if @step_count.update(step_count_params)
        format.html { redirect_to @step_count, notice: 'Step count was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_count }
      else
        format.html { render :edit }
        format.json { render json: @step_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_counts/1
  # DELETE /step_counts/1.json
  def destroy
    @step_count.destroy
    respond_to do |format|
      format.html { redirect_to step_counts_url, notice: 'Step count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_count
      @step_count = StepCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_count_params
      params.require(:step_count).permit(:taken_on, :step_count)
    end
end
