class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :codigoInterno
      t.integer :stock
      t.integer :stockMin
      t.text :foto

      t.timestamps
    end
  end
end
