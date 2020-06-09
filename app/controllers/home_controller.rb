class HomeController < ApplicationController
  include SesionHelper
  def Contactenos
  end

  def Index
  	if logged_in?
      if @current_user.tipoUsuario == 'CLIENTE'
        redirect_to vistas_PrincipalCli_path, :flash => {:error => "  Bienvenido " + @current_user.usuario}
      else
        redirect_to vistas_PrincipalDue_path, :flash => {:error => " Bienvenido " + @current_user.usuario}
      end
    end
  end

  def Nosotros
  end
end
