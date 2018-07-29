class DeviceVersion < ApplicationRecord
  belongs_to :device_manufacturer
  has_many :devices
  has_many :device_components

  validates :device_version_name, presence: true
end
