class FixTypoInInventoryOperation < ActiveRecord::Migration
  def change
    rename_column :inventory_operations, :amout, :amount
  end
end
