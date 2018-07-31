class CreateDevicePostTests < ActiveRecord::Migration[5.1]
  def change
    create_table :device_post_tests do |t|
      t.references :device, foreign_key: true
      t.references :test, foreign_key: true
      t.boolean :post_test_condition

      t.timestamps
    end
  end
end
