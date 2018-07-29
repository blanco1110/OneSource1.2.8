class Technician < ApplicationRecord
  belongs_to :technician_status
  has_many :repair_order_items

  validates :tech_name, presence: true
  validates :tech_expertise_notes, presence: true
end
