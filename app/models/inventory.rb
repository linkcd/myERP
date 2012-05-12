class Inventory < ActiveRecord::Base
  before_update :copy_to_history

  private
    def copy_to_history
      old = Inventory.find(self.id)
      history = InventoryHistory.new(:item_id => old.item_id, :location_id => old.location_id, :amount => old.amount)
      history.save
    end

end
