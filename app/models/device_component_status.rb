class DeviceComponentStatus < ApplicationRecord
  has_many :device_components

  validates :device_comp_status, presence: true
end
