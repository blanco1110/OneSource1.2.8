class CreateDeviceColors < ActiveRecord::Migration[5.1]
  def change
    create_table :device_colors do |t|
      t.string :color_name

      t.timestamps
    end
  end
end
