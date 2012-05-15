class InventoryOperation < ActiveRecord::Base
  belongs_to :location
  belongs_to :item

  validates :amount, :presence => true
  validates :amount, :numericality => {:greater_than => 0}
  validate :cannot_transfer_to_itself
  before_save :complete_operation

  def cannot_transfer_to_itself
    if operation_type == 'transfer' then
      if from_location_id == to_location_id then
        errors.add(:to_location_id, 'cannot transfer to itself')
      end
    end
  end

  @@operation_types = [:inbound, :transfer, :outbound]
  
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
    if operation_type == 'inbound' then
      return 'outside'
    end
    get_location_name(from_location_id)
  end

  def to_location_name
    if operation_type == 'outbound' then
      return 'outside'
    end
    get_location_name(to_location_id)
  end

  def complete_operation
    if self.IsCompleted == false then
      return
    end

    if operation_type == 'inbound' then
      target_inventory = Inventory.where("location_id =? AND item_id =?", to_location_id, item_id).first
      target_inventory.amount += amount
      target_inventory.save
    end

    if operation_type == 'outbound' then
      source_inventory = Inventory.where("location_id =? AND item_id =?", from_location_id, item_id).first
      source_inventory.amount -= amount
      source_inventory.save
    end

    if operation_type == 'transfer' then
      target_inventory = Inventory.where("location_id =? AND item_id =?", to_location_id, item_id).first
      source_inventory = Inventory.where("location_id =? AND item_id =?", from_location_id, item_id).first
      target_inventory.amount += amount
      source_inventory.amount -= amount 

      target_inventory.save
      source_inventory.save

    end
  end


end
