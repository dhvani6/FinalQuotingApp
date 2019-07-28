require 'test_helper'

class QuoteConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote_config = quote_configs(:one)
  end

  test "should get index" do
    get quote_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_config_url
    assert_response :success
  end

  test "should create quote_config" do
    assert_difference('QuoteConfig.count') do
      post quote_configs_url, params: { quote_config: { min_markup: @quote_config.min_markup } }
    end

    assert_redirected_to quote_config_url(QuoteConfig.last)
  end

  test "should show quote_config" do
    get quote_config_url(@quote_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_config_url(@quote_config)
    assert_response :success
  end

  test "should update quote_config" do
    patch quote_config_url(@quote_config), params: { quote_config: { min_markup: @quote_config.min_markup } }
    assert_redirected_to quote_config_url(@quote_config)
  end

  test "should destroy quote_config" do
    assert_difference('QuoteConfig.count', -1) do
      delete quote_config_url(@quote_config)
    end

    assert_redirected_to quote_configs_url
  end
end
