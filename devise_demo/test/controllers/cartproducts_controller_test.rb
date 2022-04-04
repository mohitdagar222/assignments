require "test_helper"

class CartproductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cartproducts_index_url
    assert_response :success
  end
end
