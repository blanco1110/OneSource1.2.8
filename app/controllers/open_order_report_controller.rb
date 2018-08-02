class OpenOrderReportController < ApplicationController
  def index
    @repair_orders = OpenOrderReport.openorders
    open_order_today = OpenOrderReport.openorders
    @count_open_orders = open_order_today.count(:repair_order_status_id)
    @todaydate = Date.today
  end
end
