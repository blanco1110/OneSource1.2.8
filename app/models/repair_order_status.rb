class RepairOrderStatus < ApplicationRecord
  has_many :repair_orders
  has_many :repair_order_items

  validates :repair_order_status, presence: true
end
