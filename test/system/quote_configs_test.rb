require "application_system_test_case"

class QuoteConfigsTest < ApplicationSystemTestCase
  setup do
    @quote_config = quote_configs(:one)
  end

  test "visiting the index" do
    visit quote_configs_url
    assert_selector "h1", text: "Quote Configs"
  end

  test "creating a Quote config" do
    visit quote_configs_url
    click_on "New Quote Config"

    fill_in "Min markup", with: @quote_config.min_markup
    click_on "Create Quote config"

    assert_text "Quote config was successfully created"
    click_on "Back"
  end

  test "updating a Quote config" do
    visit quote_configs_url
    click_on "Edit", match: :first

    fill_in "Min markup", with: @quote_config.min_markup
    click_on "Update Quote config"

    assert_text "Quote config was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote config" do
    visit quote_configs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote config was successfully destroyed"
  end
end
