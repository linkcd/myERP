class InventoryOperation < ActiveRecord::Base
  belongs_to :location
  belongs_to :item

  @@operation_types = [:inbound, :internal, :outbound]
  
  def self.operation_types
    @@operation_types
  end

  def get_location_name(location_id)
    if location_id.nil? then
      return 'ERROR'
    end
    
    location = Location.find_by_id(location_id)
    if location.nil? then
      return 'BAD RECORD'
    end
    location.name
  end

  def from_location_name
    get_location_name(from_location_id)
  end

  def to_location_name
    get_location_name(to_location_id)
  end
    
end
