class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :id
      t.text :description

      t.timestamps
    end
  end
end
