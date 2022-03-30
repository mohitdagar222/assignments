require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get GithubAuth" do
    get sessions_GithubAuth_url
    assert_response :success
  end
end
