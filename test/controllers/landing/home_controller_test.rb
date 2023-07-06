require "test_helper"

class Landing::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landing_home_index_url
    assert_response :success
  end
end
