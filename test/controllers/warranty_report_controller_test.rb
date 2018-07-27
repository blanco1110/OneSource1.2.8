require 'test_helper'

class WarrantyReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warranty_report_index_url
    assert_response :success
  end

end
