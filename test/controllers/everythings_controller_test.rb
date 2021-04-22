require "test_helper"

class EverythingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @everything = everythings(:one)
  end

  test "should get index" do
    get everythings_url
    assert_response :success
  end

  test "should get new" do
    get new_everything_url
    assert_response :success
  end

  test "should create everything" do
    assert_difference('Everything.count') do
      post everythings_url, params: { everything: {  } }
    end

    assert_redirected_to everything_url(Everything.last)
  end

  test "should show everything" do
    get everything_url(@everything)
    assert_response :success
  end

  test "should get edit" do
    get edit_everything_url(@everything)
    assert_response :success
  end

  test "should update everything" do
    patch everything_url(@everything), params: { everything: {  } }
    assert_redirected_to everything_url(@everything)
  end

  test "should destroy everything" do
    assert_difference('Everything.count', -1) do
      delete everything_url(@everything)
    end

    assert_redirected_to everythings_url
  end
end
