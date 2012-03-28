class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :id
      t.text :description

      t.timestamps
    end
  end
end
