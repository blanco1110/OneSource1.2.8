class RepairOrderReport
  def self.repair_orders_by_item_in_range(starting, ending)
    RepairOrder.where("repair_order_date >= '#{starting}' and repair_order_date <= '#{ending}'")
  end

end