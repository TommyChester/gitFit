class BloodSugarLevelsController < ApplicationController
  before_action :set_blood_sugar_level, only: %i[ show edit update destroy ]

  # GET /blood_sugar_levels or /blood_sugar_levels.json
  def index
    @blood_sugar_levels = BloodSugarLevel.all
  end

  # GET /blood_sugar_levels/1 or /blood_sugar_levels/1.json
  def show
  end

  # GET /blood_sugar_levels/new
  def new
    @blood_sugar_level = BloodSugarLevel.new
  end

  # GET /blood_sugar_levels/1/edit
  def edit
  end

  # POST /blood_sugar_levels or /blood_sugar_levels.json
  def create
    @blood_sugar_level = BloodSugarLevel.new(blood_sugar_level_params)

    respond_to do |format|
      if @blood_sugar_level.save
        format.html { redirect_to @blood_sugar_level, notice: "Blood sugar level was successfully created." }
        format.json { render :show, status: :created, location: @blood_sugar_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blood_sugar_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_sugar_levels/1 or /blood_sugar_levels/1.json
  def update
    respond_to do |format|
      if @blood_sugar_level.update(blood_sugar_level_params)
        format.html { redirect_to @blood_sugar_level, notice: "Blood sugar level was successfully updated." }
        format.json { render :show, status: :ok, location: @blood_sugar_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blood_sugar_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_sugar_levels/1 or /blood_sugar_levels/1.json
  def destroy
    @blood_sugar_level.destroy
    respond_to do |format|
      format.html { redirect_to blood_sugar_levels_url, notice: "Blood sugar level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_sugar_level
      @blood_sugar_level = BloodSugarLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blood_sugar_level_params
      params.require(:blood_sugar_level).permit(:value, :occurred_at)
    end
end
