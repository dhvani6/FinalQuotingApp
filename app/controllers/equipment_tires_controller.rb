class EquipmentTiresController < ApplicationController
  before_action :set_equipment_tire, only: [:show, :edit, :update, :destroy]

  # GET /equipment_tires
  # GET /equipment_tires.json
  def index
    @equipment_tires = EquipmentTire.all
  end

  # GET /equipment_tires/1
  # GET /equipment_tires/1.json
  def show
  end

  # GET /equipment_tires/new
  def new
    @equipment_tire = EquipmentTire.new
  end

  # GET /equipment_tires/1/edit
  def edit
  end

  # POST /equipment_tires
  # POST /equipment_tires.json
  def create
    @equipment_tire = EquipmentTire.new(equipment_tire_params)

    respond_to do |format|
      if @equipment_tire.save
        format.html { redirect_to @equipment_tire, notice: 'Equipment tire was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_tire }
      else
        format.html { render :new }
        format.json { render json: @equipment_tire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_tires/1
  # PATCH/PUT /equipment_tires/1.json
  def update
    respond_to do |format|
      if @equipment_tire.update(equipment_tire_params)
        format.html { redirect_to @equipment_tire, notice: 'Equipment tire was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_tire }
      else
        format.html { render :edit }
        format.json { render json: @equipment_tire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_tires/1
  # DELETE /equipment_tires/1.json
  def destroy
    @equipment_tire.destroy
    respond_to do |format|
      format.html { redirect_to equipment_tires_url, notice: 'Equipment tire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_tire
      @equipment_tire = EquipmentTire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_tire_params
      params.fetch(:equipment_tire, :tire_replacement_front_id, :tire_replacement_rear_id, {})
    end
end
