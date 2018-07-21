class Customer < ApplicationRecord
  has_many :repair_orders
  accepts_nested_attributes_for :repair_orders
end
