class DashboardController < ApplicationController
  def index
    @repair_orders = AwaitingPartsReport.awaitingparts
    awaiting_parts_today = AwaitingPartsReport.awaitingparts
    @count_awaiting_orders = awaiting_parts_today.count(:repair_order_status_id)

    @repair_orders = NotStartedOrderReport.pendingorders
    pending_order_today = NotStartedOrderReport.pendingorders
    @count_pending_orders = pending_order_today.count(:repair_order_status_id)

    @repair_orders = OnHoldOrderReport.onholdreport
    on_hold_order_today = OnHoldOrderReport.onholdreport
    @count_hold_orders = on_hold_order_today.count(:repair_order_status_id)

    @repair_orders = OpenOrderReport.openorders
    open_order_today = OpenOrderReport.openorders
    @count_open_orders = open_order_today.count(:repair_order_status_id)

    @repair_orders = CompletedOrderReport.completedorders
    completed_order_today = CompletedOrderReport.completedorders
    @count_completed_order = completed_order_today.count(:repair_order_status_id)


  end
end
