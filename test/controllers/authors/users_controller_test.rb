require "test_helper"

class Authors::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authors_user = authors_users(:one)
  end

  test "should get index" do
    get authors_users_url
    assert_response :success
  end

  test "should get new" do
    get new_authors_user_url
    assert_response :success
  end

  test "should create authors_user" do
    assert_difference("Authors::User.count") do
      post authors_users_url, params: { authors_user: { email: @authors_user.email, full_name: @authors_user.full_name } }
    end

    assert_redirected_to authors_user_url(Authors::User.last)
  end

  test "should show authors_user" do
    get authors_user_url(@authors_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_authors_user_url(@authors_user)
    assert_response :success
  end

  test "should update authors_user" do
    patch authors_user_url(@authors_user), params: { authors_user: { email: @authors_user.email, full_name: @authors_user.full_name } }
    assert_redirected_to authors_user_url(@authors_user)
  end

  test "should destroy authors_user" do
    assert_difference("Authors::User.count", -1) do
      delete authors_user_url(@authors_user)
    end

    assert_redirected_to authors_users_url
  end
end
