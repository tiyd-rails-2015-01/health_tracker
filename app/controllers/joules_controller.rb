class JoulesController < ApplicationController
  before_action :set_joule, only: [:show, :edit, :update, :destroy]

  # GET /joules
  # GET /joules.json
  def index
    @joules = Joule.all
  end

  # GET /joules/1
  # GET /joules/1.json
  def show
  end

  # GET /joules/new
  def new
    @joule = Joule.new
  end

  # GET /joules/1/edit
  def edit
  end

  # POST /joules
  # POST /joules.json
  def create
    @joule = Joule.new(joule_params)

    respond_to do |format|
      if @joule.save
        format.html { redirect_to @joule, notice: 'Joule was successfully created.' }
        format.json { render :show, status: :created, location: @joule }
      else
        format.html { render :new }
        format.json { render json: @joule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joules/1
  # PATCH/PUT /joules/1.json
  def update
    respond_to do |format|
      if @joule.update(joule_params)
        format.html { redirect_to @joule, notice: 'Joule was successfully updated.' }
        format.json { render :show, status: :ok, location: @joule }
      else
        format.html { render :edit }
        format.json { render json: @joule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joules/1
  # DELETE /joules/1.json
  def destroy
    @joule.destroy
    respond_to do |format|
      format.html { redirect_to joules_url, notice: 'Joule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joule
      @joule = Joule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joule_params
      params.require(:joule).permit(:consumed_joules, :added_on)
    end
end
