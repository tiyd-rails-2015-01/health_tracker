class CaloriesController < ApplicationController
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]

    def index
      @calories = Calorie.all
    end

    def new
      @calorie = Calorie.new
    end

    def show
    end

    def edit
    end

    def destroy
      @calorie.destroy
      respond_to do |format|
        format.html { redirect_to calories_url, notice: 'calories were successfully destroyed.' }
      end
    end

    def update
      respond_to do |format|
        if @calorie.update(calorie_params)
          format.html { redirect_to @calorie, notice: 'Step was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def create
      @calorie = Calorie.new(calorie_params)

      respond_to do |format|
        if @calorie.save
          format.html { redirect_to @calorie, notice: 'calories were successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def calorie_params
      params.require(:calorie).permit(:entered_on, :calorie)
    end

    def set_calorie
      @calorie = Calorie.find(params[:id])
    end
end
