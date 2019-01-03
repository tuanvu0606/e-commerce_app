require "application_system_test_case"

class UserAccountsTest < ApplicationSystemTestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "visiting the index" do
    visit user_accounts_url
    assert_selector "h1", text: "User Accounts"
  end

  test "creating a User account" do
    visit user_accounts_url
    click_on "New User Account"

    fill_in "User email", with: @user_account.user_email
    fill_in "User first name", with: @user_account.user_first_name
    fill_in "User last name", with: @user_account.user_last_name
    fill_in "User password", with: @user_account.user_password
    fill_in "User transaction", with: @user_account.user_transaction
    fill_in "User visit", with: @user_account.user_visit
    click_on "Create User account"

    assert_text "User account was successfully created"
    click_on "Back"
  end

  test "updating a User account" do
    visit user_accounts_url
    click_on "Edit", match: :first

    fill_in "User email", with: @user_account.user_email
    fill_in "User first name", with: @user_account.user_first_name
    fill_in "User last name", with: @user_account.user_last_name
    fill_in "User password", with: @user_account.user_password
    fill_in "User transaction", with: @user_account.user_transaction
    fill_in "User visit", with: @user_account.user_visit
    click_on "Update User account"

    assert_text "User account was successfully updated"
    click_on "Back"
  end

  test "destroying a User account" do
    visit user_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User account was successfully destroyed"
  end
end
