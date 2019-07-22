class TireReplacementRearsController < ApplicationController
  before_action :set_tire_replacement_rear, only: [:show, :edit, :update, :destroy]

  # GET /tire_replacement_rears
  # GET /tire_replacement_rears.json
  def index
    @tire_replacement_rears = TireReplacementRear.all
  end

  # GET /tire_replacement_rears/1
  # GET /tire_replacement_rears/1.json
  def show
  end

  # GET /tire_replacement_rears/new
  def new
    @tire_replacement_rear = TireReplacementRear.new
  end

  # GET /tire_replacement_rears/1/edit
  def edit
  end

  # POST /tire_replacement_rears
  # POST /tire_replacement_rears.json
  def create
    @tire_replacement_rear = TireReplacementRear.new(tire_replacement_rear_params)

    respond_to do |format|
      if @tire_replacement_rear.save
        format.html { redirect_to @tire_replacement_rear, notice: 'Tire replacement rear was successfully created.' }
        format.json { render :show, status: :created, location: @tire_replacement_rear }
      else
        format.html { render :new }
        format.json { render json: @tire_replacement_rear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tire_replacement_rears/1
  # PATCH/PUT /tire_replacement_rears/1.json
  def update
    respond_to do |format|
      if @tire_replacement_rear.update(tire_replacement_rear_params)
        format.html { redirect_to @tire_replacement_rear, notice: 'Tire replacement rear was successfully updated.' }
        format.json { render :show, status: :ok, location: @tire_replacement_rear }
      else
        format.html { render :edit }
        format.json { render json: @tire_replacement_rear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tire_replacement_rears/1
  # DELETE /tire_replacement_rears/1.json
  def destroy
    @tire_replacement_rear.destroy
    respond_to do |format|
      format.html { redirect_to tire_replacement_rears_url, notice: 'Tire replacement rear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tire_replacement_rear
      @tire_replacement_rear = TireReplacementRear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tire_replacement_rear_params
      params.require(:tire_replacement_rear).permit(:rear_tires, :order_number)
    end
end
