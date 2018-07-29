class AddPriceToRepairOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :repair_order_items, :price, :decimal, precision: 18, scale: 2
  end
end
