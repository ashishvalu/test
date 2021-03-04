require 'test_helper'

class OrderDetalisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_detali = order_detalis(:one)
  end

  test "should get index" do
    get order_detalis_url
    assert_response :success
  end

  test "should get new" do
    get new_order_detali_url
    assert_response :success
  end

  test "should create order_detali" do
    assert_difference('OrderDetali.count') do
      post order_detalis_url, params: { order_detali: { book_id: @order_detali.book_id, order_id: @order_detali.order_id, price: @order_detali.price } }
    end

    assert_redirected_to order_detali_url(OrderDetali.last)
  end

  test "should show order_detali" do
    get order_detali_url(@order_detali)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_detali_url(@order_detali)
    assert_response :success
  end

  test "should update order_detali" do
    patch order_detali_url(@order_detali), params: { order_detali: { book_id: @order_detali.book_id, order_id: @order_detali.order_id, price: @order_detali.price } }
    assert_redirected_to order_detali_url(@order_detali)
  end

  test "should destroy order_detali" do
    assert_difference('OrderDetali.count', -1) do
      delete order_detali_url(@order_detali)
    end

    assert_redirected_to order_detalis_url
  end
end
