class Customer < ApplicationRecord
  has_many :repair_orders
  accepts_nested_attributes_for :repair_orders



  def self.search(search)
    if search
      where('customer_phone LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end
end
