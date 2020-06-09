class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.integer :puntuacion
      t.string :descripcion
      t.references :usuario, foreign_key: true
      t.references :estacionamiento, foreign_key: true

      t.timestamps
    end
  end
end
