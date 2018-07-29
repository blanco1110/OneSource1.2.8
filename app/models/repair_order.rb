class RepairOrder < ApplicationRecord
  belongs_to :repair_order_status
  belongs_to :customer
  has_many :devices
  accepts_nested_attributes_for :devices

  validates :repair_order_subtotal, presence: true
  validates :repair_order_tax, presence: true
  validates :repair_order_notes, presence: true

end
