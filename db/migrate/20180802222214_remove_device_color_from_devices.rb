class RemoveDeviceColorFromDevices < ActiveRecord::Migration[5.1]
  def change
    remove_column :devices, :device_color, :string
  end
end
