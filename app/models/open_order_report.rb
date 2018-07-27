class OpenOrderReport
  def self.openorders
    RepairOrder.where("repair_order_status_id = '1'")
  end

end