class CreateAutenticacions < ActiveRecord::Migration[5.2]
  def change
    create_table :autenticacions do |t|
      t.string :usuario
      t.string :password
      t.string :tipoUsuario

      t.timestamps
    end
  end
end
