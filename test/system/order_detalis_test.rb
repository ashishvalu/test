require "application_system_test_case"

class OrderDetalisTest < ApplicationSystemTestCase
  setup do
    @order_detali = order_detalis(:one)
  end

  test "visiting the index" do
    visit order_detalis_url
    assert_selector "h1", text: "Order Detalis"
  end

  test "creating a Order detali" do
    visit order_detalis_url
    click_on "New Order Detali"

    fill_in "Book", with: @order_detali.book_id
    fill_in "Order", with: @order_detali.order_id
    fill_in "Price", with: @order_detali.price
    click_on "Create Order detali"

    assert_text "Order detali was successfully created"
    click_on "Back"
  end

  test "updating a Order detali" do
    visit order_detalis_url
    click_on "Edit", match: :first

    fill_in "Book", with: @order_detali.book_id
    fill_in "Order", with: @order_detali.order_id
    fill_in "Price", with: @order_detali.price
    click_on "Update Order detali"

    assert_text "Order detali was successfully updated"
    click_on "Back"
  end

  test "destroying a Order detali" do
    visit order_detalis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order detali was successfully destroyed"
  end
end
