require "application_system_test_case"

class ImplementsTest < ApplicationSystemTestCase
  setup do
    @implement = implements(:one)
  end

  test "visiting the index" do
    visit implements_url
    assert_selector "h1", text: "Implements"
  end

  test "creating a Implement" do
    visit implements_url
    click_on "New Implement"

    fill_in "Implement feature", with: @implement.implement_feature
    click_on "Create Implement"

    assert_text "Implement was successfully created"
    click_on "Back"
  end

  test "updating a Implement" do
    visit implements_url
    click_on "Edit", match: :first

    fill_in "Implement feature", with: @implement.implement_feature
    click_on "Update Implement"

    assert_text "Implement was successfully updated"
    click_on "Back"
  end

  test "destroying a Implement" do
    visit implements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Implement was successfully destroyed"
  end
end
