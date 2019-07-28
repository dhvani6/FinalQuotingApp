require 'test_helper'

class QuoteconfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quoteconfig = quoteconfigs(:one)
  end

  test "should get index" do
    get quoteconfigs_url
    assert_response :success
  end

  test "should get new" do
    get new_quoteconfig_url
    assert_response :success
  end

  test "should create quoteconfig" do
    assert_difference('Quoteconfig.count') do
      post quoteconfigs_url, params: { quoteconfig: { min_markup: @quoteconfig.min_markup } }
    end

    assert_redirected_to quoteconfig_url(Quoteconfig.last)
  end

  test "should show quoteconfig" do
    get quoteconfig_url(@quoteconfig)
    assert_response :success
  end

  test "should get edit" do
    get edit_quoteconfig_url(@quoteconfig)
    assert_response :success
  end

  test "should update quoteconfig" do
    patch quoteconfig_url(@quoteconfig), params: { quoteconfig: { min_markup: @quoteconfig.min_markup } }
    assert_redirected_to quoteconfig_url(@quoteconfig)
  end

  test "should destroy quoteconfig" do
    assert_difference('Quoteconfig.count', -1) do
      delete quoteconfig_url(@quoteconfig)
    end

    assert_redirected_to quoteconfigs_url
  end
end
