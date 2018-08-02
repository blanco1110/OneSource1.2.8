module PopularDevicesHelper
  def pop_devices_by_week
    column_chart Device.group_by_week("repair_orders.repair_order_date").joins(:repair_order, :device_version).group("device_versions.device_version_name").count,
                 height: '300px', width: '1200',
                 xtitle: "Devices", ytitle: "Popularity", title: 'By Week',stacked: true
  end
  def pop_devices_by_month
    column_chart Device.group_by_month("repair_orders.repair_order_date").joins(:repair_order, :device_version).group("device_versions.device_version_name").count,
                 height: '300px', width: '1200',
                 xtitle: "Devices", ytitle: "Popularity", title: 'By Month',stacked: true
  end
  def pop_devices_by_year
    column_chart Device.group_by_year("repair_orders.repair_order_date").joins(:repair_order, :device_version).group("device_versions.device_version_name").count,
                 height: '300px', width: '1200',
                 xtitle: "Devices", ytitle: "Popularity", title: 'By Year',stacked: true
  end


end
