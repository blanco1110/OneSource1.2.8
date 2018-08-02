require 'test_helper'

class AwaitingPartsReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get awaiting_parts_report_index_url
    assert_response :success
  end

end
