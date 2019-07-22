require "application_system_test_case"

class TireReplacementRearsTest < ApplicationSystemTestCase
  setup do
    @tire_replacement_rear = tire_replacement_rears(:one)
  end

  test "visiting the index" do
    visit tire_replacement_rears_url
    assert_selector "h1", text: "Tire Replacement Rears"
  end

  test "creating a Tire replacement rear" do
    visit tire_replacement_rears_url
    click_on "New Tire Replacement Rear"

    fill_in "Order number", with: @tire_replacement_rear.order_number
    fill_in "Rear tires", with: @tire_replacement_rear.rear_tires
    click_on "Create Tire replacement rear"

    assert_text "Tire replacement rear was successfully created"
    click_on "Back"
  end

  test "updating a Tire replacement rear" do
    visit tire_replacement_rears_url
    click_on "Edit", match: :first

    fill_in "Order number", with: @tire_replacement_rear.order_number
    fill_in "Rear tires", with: @tire_replacement_rear.rear_tires
    click_on "Update Tire replacement rear"

    assert_text "Tire replacement rear was successfully updated"
    click_on "Back"
  end

  test "destroying a Tire replacement rear" do
    visit tire_replacement_rears_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tire replacement rear was successfully destroyed"
  end
end
