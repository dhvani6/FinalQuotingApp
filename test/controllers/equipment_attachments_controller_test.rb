require 'test_helper'

class EquipmentAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_attachment = equipment_attachments(:one)
  end

  test "should get index" do
    get equipment_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_attachment_url
    assert_response :success
  end

  test "should create equipment_attachment" do
    assert_difference('EquipmentAttachment.count') do
      post equipment_attachments_url, params: { equipment_attachment: {  } }
    end

    assert_redirected_to equipment_attachment_url(EquipmentAttachment.last)
  end

  test "should show equipment_attachment" do
    get equipment_attachment_url(@equipment_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_attachment_url(@equipment_attachment)
    assert_response :success
  end

  test "should update equipment_attachment" do
    patch equipment_attachment_url(@equipment_attachment), params: { equipment_attachment: {  } }
    assert_redirected_to equipment_attachment_url(@equipment_attachment)
  end

  test "should destroy equipment_attachment" do
    assert_difference('EquipmentAttachment.count', -1) do
      delete equipment_attachment_url(@equipment_attachment)
    end

    assert_redirected_to equipment_attachments_url
  end
end
