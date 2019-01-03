require 'test_helper'

class UserSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_session = user_sessions(:one)
  end

  test "should get index" do
    get user_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_session_url
    assert_response :success
  end

  test "should create user_session" do
    assert_difference('UserSession.count') do
      post user_sessions_url, params: { user_session: { IP_add: @user_session.IP_add, cart_number: @user_session.cart_number, integer: @user_session.integer, string: @user_session.string, time: @user_session.time, timestamp: @user_session.timestamp, user_account_id: @user_session.user_account_id, user_transaction: @user_session.user_transaction, user_visit: @user_session.user_visit } }
    end

    assert_redirected_to user_session_url(UserSession.last)
  end

  test "should show user_session" do
    get user_session_url(@user_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_session_url(@user_session)
    assert_response :success
  end

  test "should update user_session" do
    patch user_session_url(@user_session), params: { user_session: { IP_add: @user_session.IP_add, cart_number: @user_session.cart_number, integer: @user_session.integer, string: @user_session.string, time: @user_session.time, timestamp: @user_session.timestamp, user_account_id: @user_session.user_account_id, user_transaction: @user_session.user_transaction, user_visit: @user_session.user_visit } }
    assert_redirected_to user_session_url(@user_session)
  end

  test "should destroy user_session" do
    assert_difference('UserSession.count', -1) do
      delete user_session_url(@user_session)
    end

    assert_redirected_to user_sessions_url
  end
end
