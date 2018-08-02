class AddRepairOrderStatusRefToRepairOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :repair_order_items, :repair_order_status, foreign_key: true
  end
end
