class WeightsController < ApplicationController

  before_action :set_weight, only: [:show, :edit, :update, :destroy]
  def index
    @weights = Weight.all
  end

  def new
    @weights = Weight.all
  end

  def create
    @weights = Weight.new(weight_params)
  end

  def show

  end

  def edit
  end

  def update
  end

  def weight_params
    params.require(:weight).permit(:user_weight, :added_on)
  end
end
