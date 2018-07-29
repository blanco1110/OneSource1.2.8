class RemovePriceFromRepairOrderItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :repair_order_items, :price, :decimal
  end
end
