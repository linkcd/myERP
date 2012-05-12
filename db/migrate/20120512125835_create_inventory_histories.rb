class CreateInventoryHistories < ActiveRecord::Migration
  def change
    create_table :inventory_histories do |t|
      t.integer :item_id
      t.integer :location_id
      t.decimal :amount

      t.timestamps
    end
  end
end
