class RemovePriceToRepairOrderItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :repair_order_items, :Price, :decimal
  end
end
