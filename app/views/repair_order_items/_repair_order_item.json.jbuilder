json.extract! repair_order_item, :id, :device_component_id, :technician_id, :warranty_expire_date, :warranty_coverage_notes, :repaired_as_warranty, :warranty_repair_date, :device_id, :created_at, :updated_at
json.url repair_order_item_url(repair_order_item, format: :json)
