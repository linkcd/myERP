class CreateInventoryOperations < ActiveRecord::Migration
  def change
    create_table :inventory_operations do |t|
      t.integer :item_id
      t.integer :from_location_id
      t.integer :to_location_id
      t.decimal :amout

      t.timestamps
    end
  end
end
