json.extract! usuario, :id, :nroDocumento, :nombres, :apellidoPaterno, :apellidoMaterno, :fechaNacimiento, :celular, :sexo, :direccion, :autenticacion_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
