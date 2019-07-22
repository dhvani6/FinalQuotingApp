require "application_system_test_case"

class EquipmentAttachmentsTest < ApplicationSystemTestCase
  setup do
    @equipment_attachment = equipment_attachments(:one)
  end

  test "visiting the index" do
    visit equipment_attachments_url
    assert_selector "h1", text: "Equipment Attachments"
  end

  test "creating a Equipment attachment" do
    visit equipment_attachments_url
    click_on "New Equipment Attachment"

    click_on "Create Equipment attachment"

    assert_text "Equipment attachment was successfully created"
    click_on "Back"
  end

  test "updating a Equipment attachment" do
    visit equipment_attachments_url
    click_on "Edit", match: :first

    click_on "Update Equipment attachment"

    assert_text "Equipment attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment attachment" do
    visit equipment_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment attachment was successfully destroyed"
  end
end
