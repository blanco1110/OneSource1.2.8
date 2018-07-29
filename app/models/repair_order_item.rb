class RepairOrderItem < ApplicationRecord
  belongs_to :device_component
  belongs_to :technician
  belongs_to :device


  after_save :warranty_date
  before_update :update_wrepair_date

  def warranty_date
    x = Date.today + 90
    update_columns(warranty_expire_date: x)
  end

  def update_wrepair_date
    self.warranty_repair_date = Date.today if repaired_as_warranty == true # maybe better Time.now?
  end

end
