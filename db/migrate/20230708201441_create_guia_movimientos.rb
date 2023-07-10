class CreateGuiaMovimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :guia_movimientos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nombre_receptor
      t.string :email_receptor
      t.string :unidad_receptor
      t.string :estado, default: "Pendiente"
      t.text :observacion
      t.text :guia_firmada

      t.timestamps
    end
  end
end
