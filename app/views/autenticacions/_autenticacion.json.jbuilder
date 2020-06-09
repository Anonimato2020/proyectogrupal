json.extract! autenticacion, :id, :usuario, :password, :tipoUsuario, :created_at, :updated_at
json.url autenticacion_url(autenticacion, format: :json)
