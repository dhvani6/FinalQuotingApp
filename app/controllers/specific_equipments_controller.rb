class SpecificEquipmentsController < ApplicationController
  before_action :set_specific_equipment, only: [:show, :edit, :update, :destroy]

  # GET /specific_equipments
  # GET /specific_equipments.json
  def index
    @specific_equipments = SpecificEquipment.all
  end

  # GET /specific_equipments/1
  # GET /specific_equipments/1.json
  def show
  end

  # GET /specific_equipments/new
  def new
    @specific_equipment = SpecificEquipment.new
  end

  # GET /specific_equipments/1/edit
  def edit
  end

  # POST /specific_equipments
  # POST /specific_equipments.json
  def create
    @specific_equipment = SpecificEquipment.new(specific_equipment_params)

    respond_to do |format|
      if @specific_equipment.save
        format.html { redirect_to @specific_equipment, notice: 'Specific equipment was successfully created.' }
        format.json { render :show, status: :created, location: @specific_equipment }
      else
        format.html { render :new }
        format.json { render json: @specific_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_equipments/1
  # PATCH/PUT /specific_equipments/1.json
  def update
    respond_to do |format|
      if @specific_equipment.update(specific_equipment_params)
        format.html { redirect_to @specific_equipment, notice: 'Specific equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_equipment }
      else
        format.html { render :edit }
        format.json { render json: @specific_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_equipments/1
  # DELETE /specific_equipments/1.json
  def destroy
    @specific_equipment.destroy
    respond_to do |format|
      format.html { redirect_to specific_equipments_url, notice: 'Specific equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_equipment
      @specific_equipment = SpecificEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_equipment_params
      params.require(:specific_equipment).permit(:serial_number)
    end
end
