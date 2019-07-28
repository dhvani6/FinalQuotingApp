require "application_system_test_case"

class QuoteconfigsTest < ApplicationSystemTestCase
  setup do
    @quoteconfig = quoteconfigs(:one)
  end

  test "visiting the index" do
    visit quoteconfigs_url
    assert_selector "h1", text: "Quoteconfigs"
  end

  test "creating a Quoteconfig" do
    visit quoteconfigs_url
    click_on "New Quoteconfig"

    fill_in "Min markup", with: @quoteconfig.min_markup
    click_on "Create Quoteconfig"

    assert_text "Quoteconfig was successfully created"
    click_on "Back"
  end

  test "updating a Quoteconfig" do
    visit quoteconfigs_url
    click_on "Edit", match: :first

    fill_in "Min markup", with: @quoteconfig.min_markup
    click_on "Update Quoteconfig"

    assert_text "Quoteconfig was successfully updated"
    click_on "Back"
  end

  test "destroying a Quoteconfig" do
    visit quoteconfigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quoteconfig was successfully destroyed"
  end
end
