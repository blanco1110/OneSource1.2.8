json.extract! device, :id, :imei_number, :device_version_id, :device_type, :device_color, :device_notes, :repair_order_id, :created_at, :updated_at
json.url device_url(device, format: :json)
