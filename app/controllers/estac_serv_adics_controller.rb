class EstacServAdicsController < ApplicationController
  before_action :set_estac_serv_adic, only: [:show, :edit, :update, :destroy]

  # GET /estac_serv_adics
  # GET /estac_serv_adics.json
  def index
    @estac_serv_adics = EstacServAdic.all
  end

  # GET /estac_serv_adics/1
  # GET /estac_serv_adics/1.json
  def show
  end

  # GET /estac_serv_adics/new
  def new
    @estac_serv_adic = EstacServAdic.new
  end

  # GET /estac_serv_adics/1/edit
  def edit
  end

  # POST /estac_serv_adics
  # POST /estac_serv_adics.json
  def create
    @estac_serv_adic = EstacServAdic.new(estac_serv_adic_params)

    respond_to do |format|
      if @estac_serv_adic.save
        format.html { redirect_to @estac_serv_adic, notice: 'Estac serv adic was successfully created.' }
        format.json { render :show, status: :created, location: @estac_serv_adic }
      else
        format.html { render :new }
        format.json { render json: @estac_serv_adic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estac_serv_adics/1
  # PATCH/PUT /estac_serv_adics/1.json
  def update
    respond_to do |format|
      if @estac_serv_adic.update(estac_serv_adic_params)
        format.html { redirect_to @estac_serv_adic, notice: 'Estac serv adic was successfully updated.' }
        format.json { render :show, status: :ok, location: @estac_serv_adic }
      else
        format.html { render :edit }
        format.json { render json: @estac_serv_adic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estac_serv_adics/1
  # DELETE /estac_serv_adics/1.json
  def destroy
    @estac_serv_adic.destroy
    respond_to do |format|
      format.html { redirect_to estac_serv_adics_url, notice: 'Estac serv adic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estac_serv_adic
      @estac_serv_adic = EstacServAdic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estac_serv_adic_params
      params.require(:estac_serv_adic).permit(:tarifa, :estacionamiento_id, :serv_adicionale_id)
    end
end
