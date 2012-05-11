class RemoveMeasurementFromInventory < ActiveRecord::Migration
  def change
    remove_column :inventories, :measurement
  end
end
