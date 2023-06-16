require "test_helper"

class PingControllerTest < ActionDispatch::IntegrationTest
  test "should get verify" do
    get ping_verify_url
    assert_response :success
  end
end
