require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get GoogleAuth" do
    get sessions_GoogleAuth_url
    assert_response :success
  end
end
