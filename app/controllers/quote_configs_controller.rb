class QuoteConfigsController < ApplicationController
  before_action :set_quote_config, only: [:show, :edit, :update, :destroy]

  # GET /quote_configs
  # GET /quote_configs.json
  def index
    @quote_configs = QuoteConfig.all
  end



  #def getQ
  #  QuoteConfig.find(params[1])
  #end

  #def getMin
  #  getQ.min_markup
  #end



  # GET /quote_configs/1
  # GET /quote_configs/1.json
  def show
  end

  # GET /quote_configs/new
  def new
    @quote_config = QuoteConfig.new
  end

  # GET /quote_configs/1/edit
  def edit
  end

  # POST /quote_configs
  # POST /quote_configs.json
  def create
    @quote_config = QuoteConfig.new(quote_config_params)

    respond_to do |format|
      if @quote_config.save
        format.html { redirect_to @quote_config, notice: 'Quote config was successfully created.' }
        format.json { render :show, status: :created, location: @quote_config }
      else
        format.html { render :new }
        format.json { render json: @quote_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_configs/1
  # PATCH/PUT /quote_configs/1.json
  def update
    respond_to do |format|
      if @quote_config.update(quote_config_params)
        format.html { redirect_to @quote_config, notice: 'Quote config was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote_config }
      else
        format.html { render :edit }
        format.json { render json: @quote_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_configs/1
  # DELETE /quote_configs/1.json
  def destroy
    @quote_config.destroy
    respond_to do |format|
      format.html { redirect_to quote_configs_url, notice: 'Quote config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_config
      @quote_config = QuoteConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_config_params
      params.require(:quote_config).permit(:min_markup)
    end
end
