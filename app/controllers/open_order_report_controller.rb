class OpenOrderReportController < ApplicationController
  def index
    @repair_orders = OpenOrderReport.openorders
    open_order_today = OpenOrderReport.openorders
    @count_open_orders = open_order_today.count(:repair_order_date)
    @todaydate = Date.today
  end
end
