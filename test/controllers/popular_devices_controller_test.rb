require 'test_helper'

class PopularDevicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get popular_devices_index_url
    assert_response :success
  end

end
