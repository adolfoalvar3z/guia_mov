class CreateUnidads < ActiveRecord::Migration[7.0]
  def change
    create_table :unidads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
