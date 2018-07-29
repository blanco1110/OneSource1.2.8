class RepairOrder < ApplicationRecord
  belongs_to :repair_order_status
  belongs_to :customer
  has_many :devices
  accepts_nested_attributes_for :devices
  before_update :update_status_date
  after_save :total_calculation

  def update_status_date
    self.repair_order_status_date = Date.today if repair_order_status_id_changed? # maybe better Time.now?
  end

  def total_calculation

    sub = self.devices.joins(:repair_order_items).sum(:price)
    tax1 = 0.0825
    taxtot = sub * tax1
    total = sub + taxtot

    update_columns(repair_order_subtotal: sub, repair_order_total: total, repair_order_tax: taxtot)
  end


  validates :repair_order_subtotal, presence: true
  validates :repair_order_tax, presence: true
  validates :repair_order_notes, presence: true

end
