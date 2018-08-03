class RepairOrderItem < ApplicationRecord
  belongs_to :device_component
  belongs_to :technician
  belongs_to :device
  belongs_to :repair_order_status


  before_update :update_w_date
  before_update :update_wrepair_date

  def warranty_date
    x = Date.today + 90
    update_columns(warranty_expire_date: x)
  end

  def update_w_date
    self.warranty_expire_date = Date.today + 90 if repair_order_status_id == 6 # maybe better Time.now?
  end

  def update_wrepair_date
    self.warranty_repair_date = Date.today if repaired_as_warranty == true # maybe better Time.now?
  end

end
