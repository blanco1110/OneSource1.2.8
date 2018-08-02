class OnHoldOrderReport
  def self.onholdreport
    RepairOrder.where("repair_order_status_id = '3'")
  end
end