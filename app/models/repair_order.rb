class RepairOrder < ApplicationRecord
  belongs_to :repair_order_status
  belongs_to :customer
  has_many :devices
  accepts_nested_attributes_for :devices, allow_destroy: true
  accepts_nested_attributes_for :customer,
                                reject_if: lambda {|attributes| attributes["customer_fname"].blank?}
  before_save :update_status_date
  before_create :update_date
  after_save :total_calculation

  def update_status_date
    self.repair_order_status_date = Date.today if repair_order_status_id_changed? # maybe better Time.now?
  end

  def update_date
    self.repair_order_date = Date.today
  end

  def total_calculation

    sub = self.devices.joins(:repair_order_items).sum(:price)
    tax1 = 0.0825
    taxtot = sub * tax1
    total = sub + taxtot

    update_columns(repair_order_subtotal: sub, repair_order_total: total, repair_order_tax: taxtot)
  end

  def self.search(search)
    if search
      RepairOrder.joins(:customer).where("customers.customer_phone ILIKE ?", "%#{search}%")
    else
      where(nil)
    end
  end

  

end
