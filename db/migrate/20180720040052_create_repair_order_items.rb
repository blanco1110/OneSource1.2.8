class CreateRepairOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_order_items do |t|
      t.references :device_component, foreign_key: true
      t.references :technician, foreign_key: true
      t.date :warranty_expire_date
      t.string :warranty_coverage_notes
      t.boolean :repaired_as_warranty
      t.date :warranty_repair_date
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
