class RemoveDeviceTypeFromDevices < ActiveRecord::Migration[5.1]
  def change
    remove_column :devices, :device_type, :string
  end
end
