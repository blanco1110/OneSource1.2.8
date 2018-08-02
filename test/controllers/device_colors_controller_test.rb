require 'test_helper'

class DeviceColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_color = device_colors(:one)
  end

  test "should get index" do
    get device_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_device_color_url
    assert_response :success
  end

  test "should create device_color" do
    assert_difference('DeviceColor.count') do
      post device_colors_url, params: { device_color: { color_name: @device_color.color_name } }
    end

    assert_redirected_to device_color_url(DeviceColor.last)
  end

  test "should show device_color" do
    get device_color_url(@device_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_color_url(@device_color)
    assert_response :success
  end

  test "should update device_color" do
    patch device_color_url(@device_color), params: { device_color: { color_name: @device_color.color_name } }
    assert_redirected_to device_color_url(@device_color)
  end

  test "should destroy device_color" do
    assert_difference('DeviceColor.count', -1) do
      delete device_color_url(@device_color)
    end

    assert_redirected_to device_colors_url
  end
end
