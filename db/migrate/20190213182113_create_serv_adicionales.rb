class CreateServAdicionales < ActiveRecord::Migration[5.2]
  def change
    create_table :serv_adicionales do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
