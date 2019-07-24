class EquipmentImplementsController < ApplicationController
  before_action :set_equipment_implement, only: [:show, :edit, :update, :destroy]

  # GET /equipment_implements
  # GET /equipment_implements.json
  def index
    @equipment_implements = EquipmentImplement.all
  end

  # GET /equipment_implements/1
  # GET /equipment_implements/1.json
  def show
  end

  # GET /equipment_implements/new
  def new
    @equipment_implement = EquipmentImplement.new
  end

  # GET /equipment_implements/1/edit
  def edit
  end

  # POST /equipment_implements
  # POST /equipment_implements.json
  def create
    @equipment_implement = EquipmentImplement.new(equipment_implement_params)

    respond_to do |format|
      if @equipment_implement.save
        format.html { redirect_to @equipment_implement, notice: 'Equipment implement was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_implement }
      else
        format.html { render :new }
        format.json { render json: @equipment_implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_implements/1
  # PATCH/PUT /equipment_implements/1.json
  def update
    respond_to do |format|
      if @equipment_implement.update(equipment_implement_params)
        format.html { redirect_to @equipment_implement, notice: 'Equipment implement was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_implement }
      else
        format.html { render :edit }
        format.json { render json: @equipment_implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_implements/1
  # DELETE /equipment_implements/1.json
  def destroy
    @equipment_implement.destroy
    respond_to do |format|
      format.html { redirect_to equipment_implements_url, notice: 'Equipment implement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_implement
      @equipment_implement = EquipmentImplement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_implement_params
      params.fetch(:equipment_implement, :implement_id, {})
    end
end
