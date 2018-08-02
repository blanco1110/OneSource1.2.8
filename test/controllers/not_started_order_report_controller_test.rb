require 'test_helper'

class NotStartedOrderReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get not_started_order_report_index_url
    assert_response :success
  end

end
