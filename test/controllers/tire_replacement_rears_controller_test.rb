require 'test_helper'

class TireReplacementRearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tire_replacement_rear = tire_replacement_rears(:one)
  end

  test "should get index" do
    get tire_replacement_rears_url
    assert_response :success
  end

  test "should get new" do
    get new_tire_replacement_rear_url
    assert_response :success
  end

  test "should create tire_replacement_rear" do
    assert_difference('TireReplacementRear.count') do
      post tire_replacement_rears_url, params: { tire_replacement_rear: { order_number: @tire_replacement_rear.order_number, rear_tires: @tire_replacement_rear.rear_tires } }
    end

    assert_redirected_to tire_replacement_rear_url(TireReplacementRear.last)
  end

  test "should show tire_replacement_rear" do
    get tire_replacement_rear_url(@tire_replacement_rear)
    assert_response :success
  end

  test "should get edit" do
    get edit_tire_replacement_rear_url(@tire_replacement_rear)
    assert_response :success
  end

  test "should update tire_replacement_rear" do
    patch tire_replacement_rear_url(@tire_replacement_rear), params: { tire_replacement_rear: { order_number: @tire_replacement_rear.order_number, rear_tires: @tire_replacement_rear.rear_tires } }
    assert_redirected_to tire_replacement_rear_url(@tire_replacement_rear)
  end

  test "should destroy tire_replacement_rear" do
    assert_difference('TireReplacementRear.count', -1) do
      delete tire_replacement_rear_url(@tire_replacement_rear)
    end

    assert_redirected_to tire_replacement_rears_url
  end
end
