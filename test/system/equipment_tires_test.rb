require "application_system_test_case"

class EquipmentTiresTest < ApplicationSystemTestCase
  setup do
    @equipment_tire = equipment_tires(:one)
  end

  test "visiting the index" do
    visit equipment_tires_url
    assert_selector "h1", text: "Equipment Tires"
  end

  test "creating a Equipment tire" do
    visit equipment_tires_url
    click_on "New Equipment Tire"

    click_on "Create Equipment tire"

    assert_text "Equipment tire was successfully created"
    click_on "Back"
  end

  test "updating a Equipment tire" do
    visit equipment_tires_url
    click_on "Edit", match: :first

    click_on "Update Equipment tire"

    assert_text "Equipment tire was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment tire" do
    visit equipment_tires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment tire was successfully destroyed"
  end
end
