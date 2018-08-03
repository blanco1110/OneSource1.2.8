class Customer < ApplicationRecord
  has_many :repair_orders
  accepts_nested_attributes_for :repair_orders
  validates :customer_fname, presence: true
  validates :customer_lname, presence: true
  validates :customer_phone, length: {minimum: 10, maximum: 10}, presence: true
  validates :customer_zip, length: {minimum: 5, maximum: 5}



  def self.search(search)
    if search
      where('customer_phone LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end

  def something_yn
  customer_call   ? 'Yes' : 'No'
  end

  def something_yn2
    customer_text   ? 'Yes' : 'No'
  end

end
