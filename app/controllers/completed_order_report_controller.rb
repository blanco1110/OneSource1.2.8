class CompletedOrderReportController < ApplicationController
  def index
    @repair_orders = CompletedOrderReport.completedorders
    completed_order_today = CompletedOrderReport.completedorders
    @count_completed_order = completed_order_today.count(:repair_order_status_id)
    @todaydate = Date.today

  end
end
