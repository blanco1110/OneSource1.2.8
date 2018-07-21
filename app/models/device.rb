class Device < ApplicationRecord
  belongs_to :device_version
  belongs_to :repair_order
  has_many :repair_order_items
  accepts_nested_attributes_for :repair_order_items
end
