class AwaitingPartsReportController < ApplicationController
  def index
    @repair_orders = AwaitingPartsReport.awaitingparts
    awaiting_parts_today = AwaitingPartsReport.awaitingparts
    @count_awaiting_orders = awaiting_parts_today.count(:repair_order_status_id)
    @todaydate = Date.today

  end
end
