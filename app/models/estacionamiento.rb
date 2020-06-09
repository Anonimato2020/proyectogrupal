class Estacionamiento < ApplicationRecord
	
  belongs_to :usuario
  validates :nombre, presence: {message: " es requerido."}
	validates :direccion, presence: {message: " es requerido."}
	validates :departamento, presence: {message: " es requerido."}
	validates :distrito, presence: {message: " es requerido."}
	validates :direccion, presence: {message: " es requerido."}
	validates :hinicio, presence: {message: " es requerido."}
	validates :hcierre, presence: {message: " es requerido."}
	validates :nespac, presence: {message: " es requerido."}
	validates :largo, presence: {message: " es requerido."}
	validates :ancho, presence: {message: " es requerido."}
	validates :alto, presence: {message: " es requerido."}
	validates :precio, presence: {message: " es requerido."}
end
