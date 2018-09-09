require 'test_helper'

class LifepathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifepath = lifepaths(:one)
  end

  test "should get index" do
    get lifepaths_url
    assert_response :success
  end

  test "should get new" do
    get new_lifepath_url
    assert_response :success
  end

  test "should create lifepath" do
    assert_difference('Lifepath.count') do
      post lifepaths_url, params: { lifepath: { body: @lifepath.body, path_number: @lifepath.path_number } }
    end

    assert_redirected_to lifepath_url(Lifepath.last)
  end

  test "should show lifepath" do
    get lifepath_url(@lifepath)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifepath_url(@lifepath)
    assert_response :success
  end

  test "should update lifepath" do
    patch lifepath_url(@lifepath), params: { lifepath: { body: @lifepath.body, path_number: @lifepath.path_number } }
    assert_redirected_to lifepath_url(@lifepath)
  end

  test "should destroy lifepath" do
    assert_difference('Lifepath.count', -1) do
      delete lifepath_url(@lifepath)
    end

    assert_redirected_to lifepaths_url
  end
end
