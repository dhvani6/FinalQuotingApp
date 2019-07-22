require "application_system_test_case"

class TireReplacementFrontsTest < ApplicationSystemTestCase
  setup do
    @tire_replacement_front = tire_replacement_fronts(:one)
  end

  test "visiting the index" do
    visit tire_replacement_fronts_url
    assert_selector "h1", text: "Tire Replacement Fronts"
  end

  test "creating a Tire replacement front" do
    visit tire_replacement_fronts_url
    click_on "New Tire Replacement Front"

    fill_in "Front tires", with: @tire_replacement_front.front_tires
    fill_in "Order number", with: @tire_replacement_front.order_number
    click_on "Create Tire replacement front"

    assert_text "Tire replacement front was successfully created"
    click_on "Back"
  end

  test "updating a Tire replacement front" do
    visit tire_replacement_fronts_url
    click_on "Edit", match: :first

    fill_in "Front tires", with: @tire_replacement_front.front_tires
    fill_in "Order number", with: @tire_replacement_front.order_number
    click_on "Update Tire replacement front"

    assert_text "Tire replacement front was successfully updated"
    click_on "Back"
  end

  test "destroying a Tire replacement front" do
    visit tire_replacement_fronts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tire replacement front was successfully destroyed"
  end
end
