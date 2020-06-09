class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :estacionamiento
  validates :puntuacion, presence: {message: " Seleccione la calificación"}
  validates :descripcion, presence: {message: " Ingrese su comentario"}
end
