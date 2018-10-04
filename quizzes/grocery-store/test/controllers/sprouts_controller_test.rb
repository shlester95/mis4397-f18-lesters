require 'test_helper'

class SproutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprout = sprouts(:one)
  end

  test "should get index" do
    get sprouts_url
    assert_response :success
  end

  test "should get new" do
    get new_sprout_url
    assert_response :success
  end

  test "should create sprout" do
    assert_difference('Sprout.count') do
      post sprouts_url, params: { sprout: { department: @sprout.department, employee: @sprout.employee, store: @sprout.store } }
    end

    assert_redirected_to sprout_url(Sprout.last)
  end

  test "should show sprout" do
    get sprout_url(@sprout)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprout_url(@sprout)
    assert_response :success
  end

  test "should update sprout" do
    patch sprout_url(@sprout), params: { sprout: { department: @sprout.department, employee: @sprout.employee, store: @sprout.store } }
    assert_redirected_to sprout_url(@sprout)
  end

  test "should destroy sprout" do
    assert_difference('Sprout.count', -1) do
      delete sprout_url(@sprout)
    end

    assert_redirected_to sprouts_url
  end
end
