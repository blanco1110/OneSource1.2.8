class RemoveImeiNumberFromDevices < ActiveRecord::Migration[5.1]
  def change
    remove_column :devices, :imei_number, :integer
  end
end
