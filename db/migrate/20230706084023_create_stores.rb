class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.float :length, null: false
      t.float :width, null: false
      t.float :height, null: false
      t.references :warehouse,
                   null: false,
                   index: { name: 'warehouse_on_stores_indx' },
                   foreign_key: { to_table: :warehouses }

      t.timestamps
    end
    add_index :stores, :code, unique: true
  end
end
