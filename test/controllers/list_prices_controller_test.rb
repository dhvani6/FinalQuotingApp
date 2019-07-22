require 'test_helper'

class ListPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_price = list_prices(:one)
  end

  test "should get index" do
    get list_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_list_price_url
    assert_response :success
  end

  test "should create list_price" do
    assert_difference('ListPrice.count') do
      post list_prices_url, params: { list_price: { new_price: @list_price.new_price, price_change_date: @list_price.price_change_date, suggested_list_price: @list_price.suggested_list_price } }
    end

    assert_redirected_to list_price_url(ListPrice.last)
  end

  test "should show list_price" do
    get list_price_url(@list_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_price_url(@list_price)
    assert_response :success
  end

  test "should update list_price" do
    patch list_price_url(@list_price), params: { list_price: { new_price: @list_price.new_price, price_change_date: @list_price.price_change_date, suggested_list_price: @list_price.suggested_list_price } }
    assert_redirected_to list_price_url(@list_price)
  end

  test "should destroy list_price" do
    assert_difference('ListPrice.count', -1) do
      delete list_price_url(@list_price)
    end

    assert_redirected_to list_prices_url
  end
end
