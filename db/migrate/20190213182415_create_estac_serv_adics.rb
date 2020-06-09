class CreateEstacServAdics < ActiveRecord::Migration[5.2]
  def change
    create_table :estac_serv_adics do |t|
      t.decimal :tarifa
      t.references :estacionamiento, foreign_key: true
      t.references :serv_adicionale, foreign_key: true

      t.timestamps
    end
  end
end
