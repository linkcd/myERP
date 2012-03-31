class AddNameToLocationProperty < ActiveRecord::Migration
  def change
    add_column :location_properties, :name, :string

  end
end
