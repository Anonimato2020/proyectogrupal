class CreatePublicidads < ActiveRecord::Migration[5.2]
  def change
    create_table :publicidads do |t|
      t.string :titulo
      t.string :contenido
      t.date :fechaini
      t.date :fechafin
      t.decimal :tarifa

      t.timestamps
    end
  end
end
