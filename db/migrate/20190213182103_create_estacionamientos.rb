class CreateEstacionamientos < ActiveRecord::Migration[5.2]
  def change
    create_table :estacionamientos do |t|
      t.string :nombre
      t.string :departamento
      t.string :provincia
      t.string :distrito
      t.string :direccion
      t.float :latitud
      t.float :longitud
      t.string :dias
      t.time :hinicio
      t.time :hcierre
      t.string :telf
      t.integer :nespac
      t.decimal :largo
      t.decimal :ancho
      t.decimal :alto
      t.string :ubicacion
      t.decimal :precio
      t.string :img
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
