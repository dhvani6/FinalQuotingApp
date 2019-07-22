require 'test_helper'

class EquipmentImplementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_implement = equipment_implements(:one)
  end

  test "should get index" do
    get equipment_implements_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_implement_url
    assert_response :success
  end

  test "should create equipment_implement" do
    assert_difference('EquipmentImplement.count') do
      post equipment_implements_url, params: { equipment_implement: {  } }
    end

    assert_redirected_to equipment_implement_url(EquipmentImplement.last)
  end

  test "should show equipment_implement" do
    get equipment_implement_url(@equipment_implement)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_implement_url(@equipment_implement)
    assert_response :success
  end

  test "should update equipment_implement" do
    patch equipment_implement_url(@equipment_implement), params: { equipment_implement: {  } }
    assert_redirected_to equipment_implement_url(@equipment_implement)
  end

  test "should destroy equipment_implement" do
    assert_difference('EquipmentImplement.count', -1) do
      delete equipment_implement_url(@equipment_implement)
    end

    assert_redirected_to equipment_implements_url
  end
end
