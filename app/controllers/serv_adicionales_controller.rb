class ServAdicionalesController < ApplicationController
  before_action :set_serv_adicionale, only: [:show, :edit, :update, :destroy]

  # GET /serv_adicionales
  # GET /serv_adicionales.json
  def index
    @serv_adicionales = ServAdicionale.all
  end

  # GET /serv_adicionales/1
  # GET /serv_adicionales/1.json
  def show
  end

  # GET /serv_adicionales/new
  def new
    @serv_adicionale = ServAdicionale.new
  end

  # GET /serv_adicionales/1/edit
  def edit
  end

  # POST /serv_adicionales
  # POST /serv_adicionales.json
  def create
    @serv_adicionale = ServAdicionale.new(serv_adicionale_params)

    respond_to do |format|
      if @serv_adicionale.save
        format.html { redirect_to @serv_adicionale, notice: 'Servicio adicional creado.' }
        format.json { render :show, status: :created, location: @serv_adicionale }
      else
        format.html { render :new }
        format.json { render json: @serv_adicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serv_adicionales/1
  # PATCH/PUT /serv_adicionales/1.json
  def update
    respond_to do |format|
      if @serv_adicionale.update(serv_adicionale_params)
        format.html { redirect_to @serv_adicionale, notice: 'Servicio adicional actualizado.' }
        format.json { render :show, status: :ok, location: @serv_adicionale }
      else
        format.html { render :edit }
        format.json { render json: @serv_adicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serv_adicionales/1
  # DELETE /serv_adicionales/1.json
  def destroy
    @serv_adicionale.destroy
    respond_to do |format|
      format.html { redirect_to serv_adicionales_url, notice: 'Servicio adicional eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serv_adicionale
      @serv_adicionale = ServAdicionale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serv_adicionale_params
      params.require(:serv_adicionale).permit(:nombre)
    end
end
