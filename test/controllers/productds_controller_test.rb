require 'test_helper'

class ProductdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productd = productds(:one)
  end

  test "should get index" do
    get productds_url
    assert_response :success
  end

  test "should get new" do
    get new_productd_url
    assert_response :success
  end

  test "should create productd" do
    assert_difference('Productd.count') do
      post productds_url, params: { productd: { name: @productd.name, price: @productd.price, vendor: @productd.vendor } }
    end

    assert_redirected_to productd_url(Productd.last)
  end

  test "should show productd" do
    get productd_url(@productd)
    assert_response :success
  end

  test "should get edit" do
    get edit_productd_url(@productd)
    assert_response :success
  end

  test "should update productd" do
    patch productd_url(@productd), params: { productd: { name: @productd.name, price: @productd.price, vendor: @productd.vendor } }
    assert_redirected_to productd_url(@productd)
  end

  test "should destroy productd" do
    assert_difference('Productd.count', -1) do
      delete productd_url(@productd)
    end

    assert_redirected_to productds_url
  end
end
