module RepairComponentPerOrderReportHelper
  # def components_by_date
  #   column_chart RepairOrderItem.joins(:device_component).group("device_components.device_comp_name").count("device_components.device_comp_name"), height: '150px', width: ' 900px',
  #   xtitle: "Device Components", ytitle: "Popularity"
  # def components_by_today
  #       column_chart RepairOrderItem.group_by_day("repair_order_items.created_at").joins(:device_component).group("device_components.device_comp_name").count, height: '300px', width: '1200',
  #                xtitle: "Device Components", ytitle: "Popularity", title: 'By Day'
  #
  # end
  def components_by_week
    column_chart RepairOrderItem.group_by_week("repair_order_items.created_at").joins(:device_component).group("device_components.device_comp_name").count, height: '300px', width: '1200',
                 xtitle: "Device Components", ytitle: "Popularity", title: 'By Week', stacked: true

  end
  def components_by_month
    column_chart RepairOrderItem.group_by_month("repair_order_items.created_at").joins(:device_component).group("device_components.device_comp_name").count, height: '300px', width: '1200',
                 xtitle: "Device Components", ytitle: "Popularity", title: 'By Month', stacked: true

  end

  def components_by_year
    column_chart RepairOrderItem.group_by_year("repair_order_items.created_at").joins(:device_component).group("device_components.device_comp_name").count, height: '300px', width: '1200',
                 xtitle: "Device Components", ytitle: "Popularity", title: 'By Year', stacked: true

  end


end