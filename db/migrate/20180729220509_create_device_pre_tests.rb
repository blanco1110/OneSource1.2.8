class CreateDevicePreTests < ActiveRecord::Migration[5.1]
  def change
    create_table :device_pre_tests do |t|
      t.references :device, foreign_key: true
      t.references :test, foreign_key: true
      t.boolean :pre_test_condition

      t.timestamps
    end
  end
end
