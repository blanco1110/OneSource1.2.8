class RepairOrderReportController < ApplicationController
  def index
    if request.get?
      @repair_orders = RepairOrder.all
    else
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @repair_orders = RepairOrderReport.repair_orders_by_item_in_range(@start_date,@end_date)
      stuff = RepairOrderReport.repair_orders_by_item_in_range(@start_date,@end_date)
      @x = stuff.sum(:repair_order_subtotal)
      @y = stuff.sum(:repair_order_tax)
      @z = stuff.sum(:repair_order_total)
      @count = stuff.count(:repair_order_date)





      # order_subtotal = params[:order_subtotal]
      # @repair_orders= RepairOrderReport.repair_subtotal

    end
  end
end
