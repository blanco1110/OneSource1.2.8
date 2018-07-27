require 'test_helper'

class RepairOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repair_order_report_index_url
    assert_response :success
  end

end
