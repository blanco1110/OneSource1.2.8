class RepairOrderStatus < ApplicationRecord
  has_many :repair_orders

  validates :repair_order_status, presence: true
end
