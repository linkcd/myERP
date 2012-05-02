class AddDateToInventoryOperations < ActiveRecord::Migration
  def change
    add_column :inventory_operations, :date, :date

  end
end
