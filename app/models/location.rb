class Location < ActiveRecord::Base
  has_and_belongs_to_many :location_properties
  has_many :inventories
  has_many :inventory_operations
end
