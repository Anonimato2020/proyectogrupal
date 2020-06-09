class Autenticacion < ApplicationRecord
	has_many :usuarios
	validates :usuario, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
	uniqueness: { message: ": El correo ya existe ", case_sensitive: false }

	validates :password, presence: {message: " Ingresar una contraseña"}

	validates :tipoUsuario, presence: {message: " Seleccionar un tipo de usuario "}
end
