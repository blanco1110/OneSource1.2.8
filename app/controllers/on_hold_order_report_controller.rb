class OnHoldOrderReportController < ApplicationController
  def index
    @repair_orders = OnHoldOrderReport.onholdreport
    on_hold_order_today = OnHoldOrderReport.onholdreport
    @count_hold_orders = on_hold_order_today.count(:repair_order_date)
    @todaydate = Date.today

  end
end
