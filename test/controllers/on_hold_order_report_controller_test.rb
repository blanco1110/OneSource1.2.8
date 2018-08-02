require 'test_helper'

class OnHoldOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_hold_order_report_index_url
    assert_response :success
  end

end
