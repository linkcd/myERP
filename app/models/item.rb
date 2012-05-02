class Item < ActiveRecord::Base
  has_many :inventories
  has_many :inventory_operations 
end
