class RepairComponentPerOrderReportController < ApplicationController
  def index


    if request.get?
      @repair_order_items = RepairOrderItem.all

      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @repair_order_items= RepairComponentPerOrderReport.repair_comps_in_range(@start_date,@end_date)



    end
    end
end
