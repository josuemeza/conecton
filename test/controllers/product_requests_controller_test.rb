require 'test_helper'

class ProductRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_request = product_requests(:one)
  end

  test "should get index" do
    get product_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_product_request_url
    assert_response :success
  end

  test "should create product_request" do
    assert_difference('ProductRequest.count') do
      post product_requests_url, params: { product_request: { pending: @product_request.pending, product_id: @product_request.product_id, profile_id: @product_request.profile_id } }
    end

    assert_redirected_to product_request_url(ProductRequest.last)
  end

  test "should show product_request" do
    get product_request_url(@product_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_request_url(@product_request)
    assert_response :success
  end

  test "should update product_request" do
    patch product_request_url(@product_request), params: { product_request: { pending: @product_request.pending, product_id: @product_request.product_id, profile_id: @product_request.profile_id } }
    assert_redirected_to product_request_url(@product_request)
  end

  test "should destroy product_request" do
    assert_difference('ProductRequest.count', -1) do
      delete product_request_url(@product_request)
    end

    assert_redirected_to product_requests_url
  end
end
