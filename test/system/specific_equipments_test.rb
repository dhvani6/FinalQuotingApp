require "application_system_test_case"

class SpecificEquipmentsTest < ApplicationSystemTestCase
  setup do
    @specific_equipment = specific_equipments(:one)
  end

  test "visiting the index" do
    visit specific_equipments_url
    assert_selector "h1", text: "Specific Equipments"
  end

  test "creating a Specific equipment" do
    visit specific_equipments_url
    click_on "New Specific Equipment"

    fill_in "Serial number", with: @specific_equipment.serial_number
    click_on "Create Specific equipment"

    assert_text "Specific equipment was successfully created"
    click_on "Back"
  end

  test "updating a Specific equipment" do
    visit specific_equipments_url
    click_on "Edit", match: :first

    fill_in "Serial number", with: @specific_equipment.serial_number
    click_on "Update Specific equipment"

    assert_text "Specific equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Specific equipment" do
    visit specific_equipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specific equipment was successfully destroyed"
  end
end
