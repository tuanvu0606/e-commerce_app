require "application_system_test_case"

class UserSessionsTest < ApplicationSystemTestCase
  setup do
    @user_session = user_sessions(:one)
  end

  test "visiting the index" do
    visit user_sessions_url
    assert_selector "h1", text: "User Sessions"
  end

  test "creating a User session" do
    visit user_sessions_url
    click_on "New User Session"

    fill_in "Ip add", with: @user_session.IP_add
    fill_in "Cart number", with: @user_session.cart_number
    fill_in "Integer", with: @user_session.integer
    fill_in "String", with: @user_session.string
    fill_in "Time", with: @user_session.time
    fill_in "Timestamp", with: @user_session.timestamp
    fill_in "User account", with: @user_session.user_account_id
    fill_in "User transaction", with: @user_session.user_transaction
    fill_in "User visit", with: @user_session.user_visit
    click_on "Create User session"

    assert_text "User session was successfully created"
    click_on "Back"
  end

  test "updating a User session" do
    visit user_sessions_url
    click_on "Edit", match: :first

    fill_in "Ip add", with: @user_session.IP_add
    fill_in "Cart number", with: @user_session.cart_number
    fill_in "Integer", with: @user_session.integer
    fill_in "String", with: @user_session.string
    fill_in "Time", with: @user_session.time
    fill_in "Timestamp", with: @user_session.timestamp
    fill_in "User account", with: @user_session.user_account_id
    fill_in "User transaction", with: @user_session.user_transaction
    fill_in "User visit", with: @user_session.user_visit
    click_on "Update User session"

    assert_text "User session was successfully updated"
    click_on "Back"
  end

  test "destroying a User session" do
    visit user_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User session was successfully destroyed"
  end
end
