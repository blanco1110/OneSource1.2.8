class AwaitingPartsReport
  def self.awaitingparts
    RepairOrder.where("repair_order_status_id = '4'")
  end
end