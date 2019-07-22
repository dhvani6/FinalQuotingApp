class TireReplacementFrontsController < ApplicationController
  before_action :set_tire_replacement_front, only: [:show, :edit, :update, :destroy]

  # GET /tire_replacement_fronts
  # GET /tire_replacement_fronts.json
  def index
    @tire_replacement_fronts = TireReplacementFront.all
  end

  # GET /tire_replacement_fronts/1
  # GET /tire_replacement_fronts/1.json
  def show
  end

  # GET /tire_replacement_fronts/new
  def new
    @tire_replacement_front = TireReplacementFront.new
  end

  # GET /tire_replacement_fronts/1/edit
  def edit
  end

  # POST /tire_replacement_fronts
  # POST /tire_replacement_fronts.json
  def create
    @tire_replacement_front = TireReplacementFront.new(tire_replacement_front_params)

    respond_to do |format|
      if @tire_replacement_front.save
        format.html { redirect_to @tire_replacement_front, notice: 'Tire replacement front was successfully created.' }
        format.json { render :show, status: :created, location: @tire_replacement_front }
      else
        format.html { render :new }
        format.json { render json: @tire_replacement_front.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tire_replacement_fronts/1
  # PATCH/PUT /tire_replacement_fronts/1.json
  def update
    respond_to do |format|
      if @tire_replacement_front.update(tire_replacement_front_params)
        format.html { redirect_to @tire_replacement_front, notice: 'Tire replacement front was successfully updated.' }
        format.json { render :show, status: :ok, location: @tire_replacement_front }
      else
        format.html { render :edit }
        format.json { render json: @tire_replacement_front.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tire_replacement_fronts/1
  # DELETE /tire_replacement_fronts/1.json
  def destroy
    @tire_replacement_front.destroy
    respond_to do |format|
      format.html { redirect_to tire_replacement_fronts_url, notice: 'Tire replacement front was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tire_replacement_front
      @tire_replacement_front = TireReplacementFront.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tire_replacement_front_params
      params.require(:tire_replacement_front).permit(:front_tires, :order_number)
    end
end
