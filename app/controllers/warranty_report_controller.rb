class WarrantyReportController < ApplicationController
  def index
    if request.get?
      @repair_order_items = WarrantyReport.true_warranty
    else
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @repair_order_items = WarrantyReport.warranty_in_range(@start_date,@end_date)
      warranty_date = WarrantyReport.warranty_in_range(@start_date,@end_date)
      @warrantyreportcount = warranty_date.count(:repaired_as_warranty)


    end
  end
end
