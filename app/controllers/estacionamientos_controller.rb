class EstacionamientosController < ApplicationController
  before_action :set_estacionamiento, only: [:show, :edit, :update, :destroy]

  # GET /estacionamientos
  # GET /estacionamientos.json
  def index
    @estacionamientos = Estacionamiento.all
    @serv_adicionales = ServAdicionale.all
  end

  # GET /estacionamientos/1
  # GET /estacionamientos/1.json
  def show
    @serv_adicionales = ServAdicionale.all
    @departamento = Ubigeo.where(:idDepartamento => @estacionamiento.departamento).first
    @provincia = Ubigeo.where(:idProvincia => @estacionamiento.provincia).first
    @distrito = Ubigeo.where(:idDistrito => @estacionamiento.distrito).first
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
  end

  # GET /estacionamientos/new
  def new
    @estacionamiento = Estacionamiento.new
    @serv_adicionales = ServAdicionale.all
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
  end

  # GET /estacionamientos/1/edit
  def edit
    @serv_adicionales = ServAdicionale.all
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
  end

  # POST /estacionamientos
  # POST /estacionamientos.json
  def create
    @estacionamiento = Estacionamiento.new(estacionamiento_params)
    @serv_adicionales = ServAdicionale.all
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
    id_autenticacion = session[:user_id]
    usuario = Usuario.where(:autenticacion_id => id_autenticacion).first
    @estacionamiento.usuario_id = usuario.id

    respond_to do |format|
      if @estacionamiento.save
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento creado.' }
        format.json { render :show, status: :created, location: @estacionamiento }
      else
        format.html { render :new }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacionamientos/1
  # PATCH/PUT /estacionamientos/1.json
  def update
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")

    respond_to do |format|
      if @estacionamiento.update(estacionamiento_params)
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento actualizado.' }
        format.json { render :show, status: :ok, location: @estacionamiento }
      else
        format.html { render :edit }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacionamientos/1
  # DELETE /estacionamientos/1.json
  def destroy
    @estacionamiento.destroy
    respond_to do |format|
      format.html { redirect_to estacionamientos_url, notice: 'Estacionamiento eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacionamiento
      @estacionamiento = Estacionamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacionamiento_params
      params.require(:estacionamiento).permit(:nombre, :departamento, :provincia, :distrito, :direccion, :latitud, :longitud, :dias, :hinicio, :hcierre, :telf, :nespac, :largo, :ancho, :alto, :ubicacion, :precio, :img, :usuario_id)
    end
end
