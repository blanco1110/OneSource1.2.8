require 'test_helper'

class TopCustomerReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top_customer_report_index_url
    assert_response :success
  end

end
