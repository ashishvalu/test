require 'test_helper'

class CategariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categary = categaries(:one)
  end

  test "should get index" do
    get categaries_url
    assert_response :success
  end

  test "should get new" do
    get new_categary_url
    assert_response :success
  end

  test "should create categary" do
    assert_difference('Categary.count') do
      post categaries_url, params: { categary: { name: @categary.name } }
    end

    assert_redirected_to categary_url(Categary.last)
  end

  test "should show categary" do
    get categary_url(@categary)
    assert_response :success
  end

  test "should get edit" do
    get edit_categary_url(@categary)
    assert_response :success
  end

  test "should update categary" do
    patch categary_url(@categary), params: { categary: { name: @categary.name } }
    assert_redirected_to categary_url(@categary)
  end

  test "should destroy categary" do
    assert_difference('Categary.count', -1) do
      delete categary_url(@categary)
    end

    assert_redirected_to categaries_url
  end
end
