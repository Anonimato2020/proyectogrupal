class CreateUbigeos < ActiveRecord::Migration[5.2]
  def change
    create_table :ubigeos do |t|
      t.string :idDepartamento
      t.string :Departamento
      t.string :idProvincia
      t.string :Provincia
      t.string :idDistrito
      t.string :Distrito

      t.timestamps
    end
  end
end
