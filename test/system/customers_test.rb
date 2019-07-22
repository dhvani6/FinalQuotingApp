require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer city", with: @customer.customer_city
    fill_in "Customer fname", with: @customer.customer_fname
    fill_in "Customer lname", with: @customer.customer_lname
    fill_in "Customer phone", with: @customer.customer_phone
    fill_in "Customer state", with: @customer.customer_state
    fill_in "Customer zip", with: @customer.customer_zip
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer city", with: @customer.customer_city
    fill_in "Customer fname", with: @customer.customer_fname
    fill_in "Customer lname", with: @customer.customer_lname
    fill_in "Customer phone", with: @customer.customer_phone
    fill_in "Customer state", with: @customer.customer_state
    fill_in "Customer zip", with: @customer.customer_zip
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
