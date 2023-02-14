require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert(false)
  end

  test "should get up" do
    get up_url
    assert_response :success
  end
end
