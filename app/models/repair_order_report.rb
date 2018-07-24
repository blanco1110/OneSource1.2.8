class RepairOrderReport
  def self.repair_orders_by_item_in_range(starting, ending)
    RepairOrder.where("repair_order_date >= '#{starting}' and repair_order_date <= '#{ending}'")
  end

  # def self.repair_subtotal(order_subtotal)
  #   RepairOrder.where("repair_order_subtotal = '#{order_subtotal}'")
    # query = "Select sum(repair_order_subtotal) FROM RepairOrders"
    # @sites = ActiveRecord::Base.connection.execute(query)
    # RepairOrder.where("repair_order_subtotal")
  # end
end