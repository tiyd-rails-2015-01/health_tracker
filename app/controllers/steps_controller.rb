class StepsController < ApplicationController
before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def show
  end

  def edit
  end

  def create
    @step = Step.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'step was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def step_params
    params.require(:step).permit(:entered_on, :step)
  end

  def set_step
    @step = Step.find(params[:id])
  end
end
