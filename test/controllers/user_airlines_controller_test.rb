require "test_helper"

class UserAirlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_airline = user_airlines(:one)
  end

  test "should get index" do
    get user_airlines_url
    assert_response :success
  end

  test "should get new" do
    get new_user_airline_url
    assert_response :success
  end

  test "should create user_airline" do
    assert_difference('UserAirline.count') do
      post user_airlines_url, params: { user_airline: {  } }
    end

    assert_redirected_to user_airline_url(UserAirline.last)
  end

  test "should show user_airline" do
    get user_airline_url(@user_airline)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_airline_url(@user_airline)
    assert_response :success
  end

  test "should update user_airline" do
    patch user_airline_url(@user_airline), params: { user_airline: {  } }
    assert_redirected_to user_airline_url(@user_airline)
  end

  test "should destroy user_airline" do
    assert_difference('UserAirline.count', -1) do
      delete user_airline_url(@user_airline)
    end

    assert_redirected_to user_airlines_url
  end
end
