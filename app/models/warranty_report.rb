class WarrantyReport
  def self.warranty_in_range(starting, ending)
    RepairOrderItem.where("warranty_repair_date >= '#{starting}' and warranty_repair_date <= '#{ending}' and
repaired_as_warranty = 'true'")
  end
end