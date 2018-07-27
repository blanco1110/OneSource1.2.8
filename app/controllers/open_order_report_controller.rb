class OpenOrderReportController < ApplicationController
  def index
    @repair_orders = OpenOrderReport.openorders
    # if request.get?
    #   @repair_orders = RepairOrder.all
    # else
    #   @start_date = params[:start_date]
    #   @end_date = params[:end_date]
    #   @repair_orders = RepairOrderReport.openorder(@start_date,@end_date)
    #   stuff = RepairOrderReport.openorder(@start_date,@end_date)
    open_order_today = OpenOrderReport.openorders
    @count_open_orders = open_order_today.count(:repair_order_date)
    @todaydate = Date.today
  end
end
