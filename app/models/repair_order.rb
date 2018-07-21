class RepairOrder < ApplicationRecord
  belongs_to :repair_order_status
  belongs_to :customer
  has_many :devices
  accepts_nested_attributes_for :devices
end
