class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.integer :imei_number
      t.references :device_version, foreign_key: true
      t.string :device_type
      t.string :device_color
      t.string :device_notes
      t.references :repair_order, foreign_key: true

      t.timestamps
    end
  end
end
