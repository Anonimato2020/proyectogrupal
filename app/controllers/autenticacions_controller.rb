class AutenticacionsController < ApplicationController
  before_action :set_autenticacion, only: [:show, :edit, :update, :destroy]

  # GET /autenticacions
  # GET /autenticacions.json
  def index
    @autenticacions = Autenticacion.all
  end

  # GET /autenticacions/1
  # GET /autenticacions/1.json
  def show
  end

  # GET /autenticacions/new
  def new
    @autenticacion = Autenticacion.new
  end

  # GET /autenticacions/1/edit
  def edit
  end

  # POST /autenticacions
  # POST /autenticacions.json
  def create
    @autenticacion = Autenticacion.new(autenticacion_params)

    if @autenticacion.password == params[:autenticacion][:confpassword]

      respond_to do |format|
        if @autenticacion.save
          format.html {redirect_to @autenticacion, notice: 'Cuenta creada.'}
          format.json {render :show, status: :created, location: @autenticacion}
        else
          format.html {render :new}
          format.json {render json: @autenticacion.errors, status: :unprocessable_entity}
        end
      end
    else
      redirect_to new_autenticacion_path, :flash => {:error => "Confirmación inválida"}
    end
  end

  # PATCH/PUT /autenticacions/1
  # PATCH/PUT /autenticacions/1.json
  def update
    respond_to do |format|
      if @autenticacion.update(autenticacion_params)
        format.html { redirect_to @autenticacion, notice: 'Cuenta actualizada.' }
        format.json { render :show, status: :ok, location: @autenticacion }
      else
        format.html { render :edit }
        format.json { render json: @autenticacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autenticacions/1
  # DELETE /autenticacions/1.json
  def destroy
    @autenticacion.destroy
    redirect_to :root
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autenticacion
      @autenticacion = Autenticacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autenticacion_params
      params.require(:autenticacion).permit(:usuario, :password, :tipoUsuario)
    end
end
