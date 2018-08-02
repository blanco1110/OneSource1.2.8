require 'test_helper'

class CompletedOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get completed_order_report_index_url
    assert_response :success
  end

end
