require "application_system_test_case"

class EquipmentImplementsTest < ApplicationSystemTestCase
  setup do
    @equipment_implement = equipment_implements(:one)
  end

  test "visiting the index" do
    visit equipment_implements_url
    assert_selector "h1", text: "Equipment Implements"
  end

  test "creating a Equipment implement" do
    visit equipment_implements_url
    click_on "New Equipment Implement"

    click_on "Create Equipment implement"

    assert_text "Equipment implement was successfully created"
    click_on "Back"
  end

  test "updating a Equipment implement" do
    visit equipment_implements_url
    click_on "Edit", match: :first

    click_on "Update Equipment implement"

    assert_text "Equipment implement was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment implement" do
    visit equipment_implements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment implement was successfully destroyed"
  end
end
