require 'test_helper'

class OpenOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get open_order_report_index_url
    assert_response :success
  end

end
