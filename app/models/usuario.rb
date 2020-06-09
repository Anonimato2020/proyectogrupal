class Usuario < ApplicationRecord
  belongs_to :autenticacion
  has_many :comentarios
	has_many :estacionamientos
	has_many :alquilers
end
