class Device < ApplicationRecord
  belongs_to :device_version
  belongs_to :repair_order
  has_many :repair_order_items
  has_many :device_pre_tests
  has_many :device_post_tests
  accepts_nested_attributes_for :repair_order_items


  accepts_nested_attributes_for :device_pre_tests
  accepts_nested_attributes_for :device_post_tests


  validates :imei_number, length: {minimum: 15}, presence: true
  validates :device_color, presence: true
end
