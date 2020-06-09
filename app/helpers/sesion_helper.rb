module SesionHelper
  def log_in(user)
    session[:user_id] = user.id
    session[:user_usuario] = user.usuario
  end

  def current_user
    @current_user ||= Autenticacion.find_by(id: session[:user_id])
  end

  def logged_in? 
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:user_email)
    @current_user = nil
  end
end
