class AddOperationTypeToInventoryOperation < ActiveRecord::Migration
  def change
    add_column :inventory_operations, :operation_type, :string

  end
end
