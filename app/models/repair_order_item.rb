class RepairOrderItem < ApplicationRecord
  belongs_to :device_component
  belongs_to :technician
  belongs_to :device

  validates :warranty_coverage_notes, presence: true
  validates :device_id, presence: true

end
