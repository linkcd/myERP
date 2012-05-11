class AddMeasurementToItem < ActiveRecord::Migration
  def change
    add_column :items, :measurement, :string

  end
end
