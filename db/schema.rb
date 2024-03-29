# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120512125835) do

  create_table "inventories", :force => true do |t|
    t.integer  "item_id"
    t.integer  "location_id"
    t.decimal  "amount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inventory_histories", :force => true do |t|
    t.integer  "item_id"
    t.integer  "location_id"
    t.decimal  "amount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inventory_operations", :force => true do |t|
    t.integer  "item_id"
    t.integer  "from_location_id"
    t.integer  "to_location_id"
    t.decimal  "amount"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.date     "date"
    t.boolean  "IsCompleted"
    t.string   "operation_type"
  end

  create_table "items", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.string   "measurement"
  end

  create_table "location_properties", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
  end

  create_table "location_properties_locations", :id => false, :force => true do |t|
    t.integer "location_id"
    t.integer "location_property_id"
  end

  create_table "locations", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
