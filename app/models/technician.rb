class Technician < ApplicationRecord
  belongs_to :technician_status
  has_many :repair_order_items
end
