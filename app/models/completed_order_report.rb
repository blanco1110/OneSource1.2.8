class CompletedOrderReport
  def self.completedorders
    RepairOrder.where("repair_order_status_id = '5'")
  end
end