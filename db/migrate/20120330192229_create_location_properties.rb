class CreateLocationProperties < ActiveRecord::Migration
  def change
    create_table :location_properties do |t|
      t.string :id
      t.text :description

      t.timestamps
    end
  end
end
