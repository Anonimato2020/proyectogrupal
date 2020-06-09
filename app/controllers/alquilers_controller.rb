class AlquilersController < ApplicationController
  before_action :set_alquiler, only: [:show, :edit, :update, :destroy]

  # GET /alquilers
  # GET /alquilers.json
  def index
    @alquilers = Alquiler.all
     @serv_adiconales = ServAdicionale.all
  end

  # GET /alquilers/1
  # GET /alquilers/1.json
  def show
     @serv_adiconales = ServAdicionale.all
  end

  # GET /alquilers/new
  def new
    @alquiler = Alquiler.new
    @serv_adiconales = ServAdicionale.all
    id_estacionamiento = params[:estacionamiento][:id]
    @alquiler.estacionamiento_id = id_estacionamiento

  end

  # GET /alquilers/1/edit
  def edit
     @serv_adiconales = ServAdicionale.all
  end

  # POST /alquilers
  # POST /alquilers.json
  def create
    @alquiler = Alquiler.new(alquiler_params)
    @serv_adiconales = ServAdicionale.all
    id_autenticacion = session[:user_id]
    usuario = Usuario.where(:autenticacion_id => id_autenticacion).first
    @alquiler.usuario_id = usuario.id


    respond_to do |format|
      if @alquiler.save
        format.html { redirect_to @alquiler, notice: 'Alquiler fue creado.' }
        format.json { render :show, status: :created, location: @alquiler }
      else
        format.html { render :new }
        format.json { render json: @alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alquilers/1
  # PATCH/PUT /alquilers/1.json
  def update
    respond_to do |format|
      if @alquiler.update(alquiler_params)
        format.html { redirect_to @alquiler, notice: 'Alquiler actualizado.' }
        format.json { render :show, status: :ok, location: @alquiler }
      else
        format.html { render :edit }
        format.json { render json: @alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alquilers/1
  # DELETE /alquilers/1.json
  def destroy
    @alquiler.destroy
    respond_to do |format|
      format.html { redirect_to alquilers_url, notice: 'Alquiler cancelado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alquiler
      @alquiler = Alquiler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alquiler_params
      params.require(:alquiler).permit(:fecha, :hora, :nhora, :tpago, :usuario_id, :estacionamiento_id)
    end
end
