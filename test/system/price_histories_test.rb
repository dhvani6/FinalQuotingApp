require "application_system_test_case"

class PriceHistoriesTest < ApplicationSystemTestCase
  setup do
    @price_history = price_histories(:one)
  end

  test "visiting the index" do
    visit price_histories_url
    assert_selector "h1", text: "Price Histories"
  end

  test "creating a Price history" do
    visit price_histories_url
    click_on "New Price History"

    fill_in "Past price", with: @price_history.past_price
    click_on "Create Price history"

    assert_text "Price history was successfully created"
    click_on "Back"
  end

  test "updating a Price history" do
    visit price_histories_url
    click_on "Edit", match: :first

    fill_in "Past price", with: @price_history.past_price
    click_on "Update Price history"

    assert_text "Price history was successfully updated"
    click_on "Back"
  end

  test "destroying a Price history" do
    visit price_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Price history was successfully destroyed"
  end
end
