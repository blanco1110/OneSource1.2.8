class DeviceComponent < ApplicationRecord
  belongs_to :device_version
  belongs_to :device_component_status
  has_many :repair_order_items
end
