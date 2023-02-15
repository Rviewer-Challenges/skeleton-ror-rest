require "test_helper"

class Api::V1::ServersControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get api_v1_ping_url
    assert_response :success
  end
end
