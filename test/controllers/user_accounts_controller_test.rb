require 'test_helper'

class UserAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_account = user_accounts(:one)
  end

  test "should get index" do
    get user_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_account_url
    assert_response :success
  end

  test "should create user_account" do
    assert_difference('UserAccount.count') do
      post user_accounts_url, params: { user_account: { user_email: @user_account.user_email, user_first_name: @user_account.user_first_name, user_last_name: @user_account.user_last_name, user_password: @user_account.user_password, user_transaction: @user_account.user_transaction, user_visit: @user_account.user_visit } }
    end

    assert_redirected_to user_account_url(UserAccount.last)
  end

  test "should show user_account" do
    get user_account_url(@user_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_account_url(@user_account)
    assert_response :success
  end

  test "should update user_account" do
    patch user_account_url(@user_account), params: { user_account: { user_email: @user_account.user_email, user_first_name: @user_account.user_first_name, user_last_name: @user_account.user_last_name, user_password: @user_account.user_password, user_transaction: @user_account.user_transaction, user_visit: @user_account.user_visit } }
    assert_redirected_to user_account_url(@user_account)
  end

  test "should destroy user_account" do
    assert_difference('UserAccount.count', -1) do
      delete user_account_url(@user_account)
    end

    assert_redirected_to user_accounts_url
  end
end
