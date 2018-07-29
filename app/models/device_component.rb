class DeviceComponent < ApplicationRecord
  belongs_to :device_version
  belongs_to :device_component_status
  has_many :repair_order_items

  validates :device_comp_name, presence: true
  validates :device_comp_color, presence: true
  validates :device_comp_description, presence: true
  validates :device_comp_cost, presence: true

end
