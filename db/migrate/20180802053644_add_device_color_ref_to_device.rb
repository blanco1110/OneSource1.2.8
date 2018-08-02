class AddDeviceColorRefToDevice < ActiveRecord::Migration[5.1]
  def change
    add_reference :devices, :device_color, foreign_key: true
  end
end
