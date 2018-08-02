require 'test_helper'

class RepairComponentPerOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repair_component_per_order_report_index_url
    assert_response :success
  end

end
