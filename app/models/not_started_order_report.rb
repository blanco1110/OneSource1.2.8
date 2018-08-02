class NotStartedOrderReport
  def self.pendingorders
    RepairOrder.where("repair_order_status_id = '2'")
  end

end