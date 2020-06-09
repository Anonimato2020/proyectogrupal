class VistasController < ApplicationController
  def PrincipalDue
  	@estacionamientos = Estacionamiento.all
  	@autenticacions = Autenticacion.all
  end

  def PrincipalCli
  	@estacionamientos = Estacionamiento.all
  	@autenticacions = Autenticacion.all
  end

  def PrincipalAdmin
  end

  def ListarEstac
    
  end
end
