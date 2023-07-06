require "application_system_test_case"

class Authors::UsersTest < ApplicationSystemTestCase
  setup do
    @authors_user = authors_users(:one)
  end

  test "visiting the index" do
    visit authors_users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit authors_users_url
    click_on "New user"

    fill_in "Email", with: @authors_user.email
    fill_in "Full name", with: @authors_user.full_name
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit authors_user_url(@authors_user)
    click_on "Edit this user", match: :first

    fill_in "Email", with: @authors_user.email
    fill_in "Full name", with: @authors_user.full_name
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit authors_user_url(@authors_user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
