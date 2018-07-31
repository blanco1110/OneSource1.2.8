class AddImeiNumberToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :imei_number, :bigint
  end
end
