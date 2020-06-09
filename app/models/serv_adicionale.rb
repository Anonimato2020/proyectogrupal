class ServAdicionale < ApplicationRecord
	validates :nombre, presence: {message: " es requerido."}
end
