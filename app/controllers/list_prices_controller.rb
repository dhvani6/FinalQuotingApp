class ListPricesController < ApplicationController
  before_action :set_list_price, only: [:show, :edit, :update, :destroy]

  # GET /list_prices
  # GET /list_prices.json
  def index
    @list_prices = ListPrice.all
  end

  # GET /list_prices/1
  # GET /list_prices/1.json
  def show
  end

  # GET /list_prices/new
  def new
    @list_price = ListPrice.new
  end

  # GET /list_prices/1/edit
  def edit
  end

  # POST /list_prices
  # POST /list_prices.json
  def create
    @list_price = ListPrice.new(list_price_params)

    respond_to do |format|
      if @list_price.save
        format.html { redirect_to @list_price, notice: 'List price was successfully created.' }
        format.json { render :show, status: :created, location: @list_price }
      else
        format.html { render :new }
        format.json { render json: @list_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_prices/1
  # PATCH/PUT /list_prices/1.json
  def update
    respond_to do |format|
      if @list_price.update(list_price_params)
        format.html { redirect_to @list_price, notice: 'List price was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_price }
      else
        format.html { render :edit }
        format.json { render json: @list_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_prices/1
  # DELETE /list_prices/1.json
  def destroy
    @list_price.destroy
    respond_to do |format|
      format.html { redirect_to list_prices_url, notice: 'List price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_price
      @list_price = ListPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_price_params
      params.require(:list_price).permit(:suggested_list_price, :price_change_date, :new_price,
                                         :attachment_id, :implement_id, :tire_replacement_front_id,
                                         :tire_replacement_rear_id, :model_id)
    end
end
