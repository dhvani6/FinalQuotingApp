require 'test_helper'

class EquipmentTiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_tire = equipment_tires(:one)
  end

  test "should get index" do
    get equipment_tires_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_tire_url
    assert_response :success
  end

  test "should create equipment_tire" do
    assert_difference('EquipmentTire.count') do
      post equipment_tires_url, params: { equipment_tire: {  } }
    end

    assert_redirected_to equipment_tire_url(EquipmentTire.last)
  end

  test "should show equipment_tire" do
    get equipment_tire_url(@equipment_tire)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_tire_url(@equipment_tire)
    assert_response :success
  end

  test "should update equipment_tire" do
    patch equipment_tire_url(@equipment_tire), params: { equipment_tire: {  } }
    assert_redirected_to equipment_tire_url(@equipment_tire)
  end

  test "should destroy equipment_tire" do
    assert_difference('EquipmentTire.count', -1) do
      delete equipment_tire_url(@equipment_tire)
    end

    assert_redirected_to equipment_tires_url
  end
end
