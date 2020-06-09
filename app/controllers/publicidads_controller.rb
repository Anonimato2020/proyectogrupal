class PublicidadsController < ApplicationController
  before_action :set_publicidad, only: [:show, :edit, :update, :destroy]

  # GET /publicidads
  # GET /publicidads.json
  def index
    @publicidads = Publicidad.all
  end

  # GET /publicidads/1
  # GET /publicidads/1.json
  def show
  end

  # GET /publicidads/new
  def new
    @publicidad = Publicidad.new
  end

  # GET /publicidads/1/edit
  def edit
  end

  # POST /publicidads
  # POST /publicidads.json
  def create
    @publicidad = Publicidad.new(publicidad_params)

    respond_to do |format|
      if @publicidad.save
        format.html { redirect_to @publicidad, notice: 'Publicidad creada.' }
        format.json { render :show, status: :created, location: @publicidad }
      else
        format.html { render :new }
        format.json { render json: @publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicidads/1
  # PATCH/PUT /publicidads/1.json
  def update
    respond_to do |format|
      if @publicidad.update(publicidad_params)
        format.html { redirect_to @publicidad, notice: 'Publicidad actualizada.' }
        format.json { render :show, status: :ok, location: @publicidad }
      else
        format.html { render :edit }
        format.json { render json: @publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicidads/1
  # DELETE /publicidads/1.json
  def destroy
    @publicidad.destroy
    respond_to do |format|
      format.html { redirect_to publicidads_url, notice: 'Publicidad eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicidad
      @publicidad = Publicidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicidad_params
      params.require(:publicidad).permit(:titulo, :contenido, :fechaini, :fechafin, :tarifa)
    end
end
