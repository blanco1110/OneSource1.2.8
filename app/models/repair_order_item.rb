class RepairOrderItem < ApplicationRecord
  belongs_to :device_component
  belongs_to :technician
  belongs_to :device
end
