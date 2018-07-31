class RepairComponentPerOrderReport
  # def self.arelsql
  #   RepairOrderItem.select(
  #       [
  #           RepairOrder.arel_table[:repair_order_date], RepairOrderItem.arel_table[Arel.star], Device.arel_table[Arel.star]
  #       ]
  #   ).joins(
  #       RepairOrderItem.arel_table.join(Device.arel_table).on(
  #           Device.arel_table[:id].eq(RepairOrderItem.arel_table[:device_id])
  #       ).join_sources
  #   ).joins(
  #       RepairOrderItem.arel_table.join(RepairOrder.arel_table).on(
  #           RepairOrder.arel_table[:id].eq(Device.arel_table[:repair_order_id])
  #       ).join_sources
  #   )
  #   end

  def self.repair_comps_in_range(starting, ending)
    RepairOrderItem.select(
        [
            RepairOrder.arel_table[Arel.star], RepairOrderItem.arel_table[Arel.star], Device.arel_table[Arel.star]
        ]
    ).where(
        RepairOrder.arel_table[:repair_order_date].gteq("#{starting}").and(
            RepairOrder.arel_table[:repair_order_date].lteq("#{ending}")
        )
    ).joins(
        RepairOrderItem.arel_table.join(Device.arel_table).on(
            Device.arel_table[:id].eq(RepairOrderItem.arel_table[:device_id])
        ).join_sources
    ).joins(
        RepairOrderItem.arel_table.join(RepairOrder.arel_table).on(
            RepairOrder.arel_table[:id].eq(Device.arel_table[:repair_order_id])
        ).join_sources
    )
  end

end