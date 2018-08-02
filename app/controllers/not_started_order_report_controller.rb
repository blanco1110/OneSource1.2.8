class NotStartedOrderReportController < ApplicationController
  def index
    @repair_orders = NotStartedOrderReport.pendingorders
    pending_order_today = NotStartedOrderReport.pendingorders
    @count_pending_orders = pending_order_today.count(:repair_order_status_id)
    @todaydate = Date.today
  end
end
