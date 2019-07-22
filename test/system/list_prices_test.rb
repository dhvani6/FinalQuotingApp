require "application_system_test_case"

class ListPricesTest < ApplicationSystemTestCase
  setup do
    @list_price = list_prices(:one)
  end

  test "visiting the index" do
    visit list_prices_url
    assert_selector "h1", text: "List Prices"
  end

  test "creating a List price" do
    visit list_prices_url
    click_on "New List Price"

    fill_in "New price", with: @list_price.new_price
    fill_in "Price change date", with: @list_price.price_change_date
    fill_in "Suggested list price", with: @list_price.suggested_list_price
    click_on "Create List price"

    assert_text "List price was successfully created"
    click_on "Back"
  end

  test "updating a List price" do
    visit list_prices_url
    click_on "Edit", match: :first

    fill_in "New price", with: @list_price.new_price
    fill_in "Price change date", with: @list_price.price_change_date
    fill_in "Suggested list price", with: @list_price.suggested_list_price
    click_on "Update List price"

    assert_text "List price was successfully updated"
    click_on "Back"
  end

  test "destroying a List price" do
    visit list_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List price was successfully destroyed"
  end
end
