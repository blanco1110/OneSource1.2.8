class Customer < ApplicationRecord
  has_many :repair_orders
  accepts_nested_attributes_for :repair_orders
  validates :customer_fname, presence: true
  validates :customer_lname, presence: true
  validates :customer_email, presence: true
  validates :customer_zip, presences: true


  def self.search(search)
    if search
      where('customer_phone LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end


end
