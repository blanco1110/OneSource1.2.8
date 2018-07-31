class TechnicianStatus < ApplicationRecord
  has_many :technicians

  validates :tech_status, presence: true
end
