require 'test_helper'

class TireReplacementFrontsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tire_replacement_front = tire_replacement_fronts(:one)
  end

  test "should get index" do
    get tire_replacement_fronts_url
    assert_response :success
  end

  test "should get new" do
    get new_tire_replacement_front_url
    assert_response :success
  end

  test "should create tire_replacement_front" do
    assert_difference('TireReplacementFront.count') do
      post tire_replacement_fronts_url, params: { tire_replacement_front: { front_tires: @tire_replacement_front.front_tires, order_number: @tire_replacement_front.order_number } }
    end

    assert_redirected_to tire_replacement_front_url(TireReplacementFront.last)
  end

  test "should show tire_replacement_front" do
    get tire_replacement_front_url(@tire_replacement_front)
    assert_response :success
  end

  test "should get edit" do
    get edit_tire_replacement_front_url(@tire_replacement_front)
    assert_response :success
  end

  test "should update tire_replacement_front" do
    patch tire_replacement_front_url(@tire_replacement_front), params: { tire_replacement_front: { front_tires: @tire_replacement_front.front_tires, order_number: @tire_replacement_front.order_number } }
    assert_redirected_to tire_replacement_front_url(@tire_replacement_front)
  end

  test "should destroy tire_replacement_front" do
    assert_difference('TireReplacementFront.count', -1) do
      delete tire_replacement_front_url(@tire_replacement_front)
    end

    assert_redirected_to tire_replacement_fronts_url
  end
end
