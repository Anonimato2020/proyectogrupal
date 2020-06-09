class SesionController < ApplicationController
  include SesionHelper
  def Nuevo
  end
  # POST /sesion
  # POST /sesion.json
  def create
    user = Autenticacion.find_by(usuario: params[:session][:email].downcase, password: params[:session][:password])
    if user
      log_in user
      redirect_to :root
      # Si existe
    else
      # Si no existe
      flash[:danger] = 'Invalida la combinacion email/password'
      render :Nuevo
    end
  end

  def destroy
   if logged_in?
     log_out
   end
     redirect_to :root
  end
end
