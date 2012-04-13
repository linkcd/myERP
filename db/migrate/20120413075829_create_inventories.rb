class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :item_id
      t.integer :location_id
      t.decimal :amount
      t.string :measurement

      t.timestamps
    end
  end
end
