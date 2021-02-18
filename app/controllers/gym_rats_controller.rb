class GymRatsController < ApplicationController
  before_action :set_gym_rat, only: %i[ show edit update destroy ]

  # GET /gym_rats or /gym_rats.json
  def index
    @gym_rats = GymRat.all
  end

  # GET /gym_rats/1 or /gym_rats/1.json
  def show
  end

  # GET /gym_rats/new
  def new
    @gym_rat = GymRat.new
  end

  # GET /gym_rats/1/edit
  def edit
  end

  # POST /gym_rats or /gym_rats.json
  def create
    @gym_rat = GymRat.new(gym_rat_params)

    respond_to do |format|
      if @gym_rat.save
        format.html { redirect_to @gym_rat, notice: "Gym rat was successfully created." }
        format.json { render :show, status: :created, location: @gym_rat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gym_rat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_rats/1 or /gym_rats/1.json
  def update
    respond_to do |format|
      if @gym_rat.update(gym_rat_params)
        format.html { redirect_to @gym_rat, notice: "Gym rat was successfully updated." }
        format.json { render :show, status: :ok, location: @gym_rat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gym_rat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_rats/1 or /gym_rats/1.json
  def destroy
    @gym_rat.destroy
    respond_to do |format|
      format.html { redirect_to gym_rats_url, notice: "Gym rat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_rat
      @gym_rat = GymRat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gym_rat_params
      params.fetch(:gym_rat, {}).permit(:name, :email, :password, :password_confirmation)
    end
end
