class JoinTableLocationLocationProperty < ActiveRecord::Migration
  def change
    create_table :location_properties_locations, :id => false do |t|
      t.integer :location_id
      t.integer :location_property_id
    end
  end
end

