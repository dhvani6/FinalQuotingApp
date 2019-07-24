class EquipmentAttachmentsController < ApplicationController
  before_action :set_equipment_attachment, only: [:show, :edit, :update, :destroy]

  # GET /equipment_attachments
  # GET /equipment_attachments.json
  def index
    @equipment_attachments = EquipmentAttachment.all
  end

  # GET /equipment_attachments/1
  # GET /equipment_attachments/1.json
  def show
  end

  # GET /equipment_attachments/new
  def new
    @equipment_attachment = EquipmentAttachment.new
  end

  # GET /equipment_attachments/1/edit
  def edit
  end

  # POST /equipment_attachments
  # POST /equipment_attachments.json
  def create
    @equipment_attachment = EquipmentAttachment.new(equipment_attachment_params)

    respond_to do |format|
      if @equipment_attachment.save
        format.html { redirect_to @equipment_attachment, notice: 'Equipment attachment was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_attachment }
      else
        format.html { render :new }
        format.json { render json: @equipment_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_attachments/1
  # PATCH/PUT /equipment_attachments/1.json
  def update
    respond_to do |format|
      if @equipment_attachment.update(equipment_attachment_params)
        format.html { redirect_to @equipment_attachment, notice: 'Equipment attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_attachment }
      else
        format.html { render :edit }
        format.json { render json: @equipment_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_attachments/1
  # DELETE /equipment_attachments/1.json
  def destroy
    @equipment_attachment.destroy
    respond_to do |format|
      format.html { redirect_to equipment_attachments_url, notice: 'Equipment attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_attachment
      @equipment_attachment = EquipmentAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_attachment_params
      params.fetch(:equipment_attachment, :attachment_id, {})
    end
end
