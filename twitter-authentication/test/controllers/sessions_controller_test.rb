require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get TwitterAuth" do
    get sessions_TwitterAuth_url
    assert_response :success
  end
end
