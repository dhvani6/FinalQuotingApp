require 'test_helper'

class SpecificEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specific_equipment = specific_equipments(:one)
  end

  test "should get index" do
    get specific_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_specific_equipment_url
    assert_response :success
  end

  test "should create specific_equipment" do
    assert_difference('SpecificEquipment.count') do
      post specific_equipments_url, params: { specific_equipment: { serial_number: @specific_equipment.serial_number } }
    end

    assert_redirected_to specific_equipment_url(SpecificEquipment.last)
  end

  test "should show specific_equipment" do
    get specific_equipment_url(@specific_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_specific_equipment_url(@specific_equipment)
    assert_response :success
  end

  test "should update specific_equipment" do
    patch specific_equipment_url(@specific_equipment), params: { specific_equipment: { serial_number: @specific_equipment.serial_number } }
    assert_redirected_to specific_equipment_url(@specific_equipment)
  end

  test "should destroy specific_equipment" do
    assert_difference('SpecificEquipment.count', -1) do
      delete specific_equipment_url(@specific_equipment)
    end

    assert_redirected_to specific_equipments_url
  end
end
