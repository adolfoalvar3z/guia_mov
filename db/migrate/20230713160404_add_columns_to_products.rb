class AddColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :marca, :string
    add_column :products, :modelo, :string
    add_column :products, :description, :text
  end
end
