module TopCustomerReportHelper
  def top_customer_month
    column_chart RepairOrder.group_by_month("repair_orders.repair_order_date").joins(:customer).group('customer_phone').sum("repair_order_total"),
                 height: '300px', width: '1200',
                 xtitle: "Customer Phone Numbers", ytitle: "Total", title: 'By Month',stacked: true, prefix: "$", thousands: ","

  end
  def top_customer_year
    column_chart RepairOrder.group_by_year("repair_orders.repair_order_date").joins(:customer).group('customer_phone').sum("repair_order_total"),
                 height: '300px', width: '1200',
                 xtitle: "Customer Phone Numbers", ytitle: "Total", title: 'By Year',stacked: true, prefix: "$", thousands: ","

  end
end
