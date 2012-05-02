class AddFlgToInventoryOperations < ActiveRecord::Migration
  def change
    add_column :inventory_operations, :IsCompleted, :boolean

  end
end
