require "application_system_test_case"

class CategariesTest < ApplicationSystemTestCase
  setup do
    @categary = categaries(:one)
  end

  test "visiting the index" do
    visit categaries_url
    assert_selector "h1", text: "Categaries"
  end

  test "creating a Categary" do
    visit categaries_url
    click_on "New Categary"

    fill_in "Name", with: @categary.name
    click_on "Create Categary"

    assert_text "Categary was successfully created"
    click_on "Back"
  end

  test "updating a Categary" do
    visit categaries_url
    click_on "Edit", match: :first

    fill_in "Name", with: @categary.name
    click_on "Update Categary"

    assert_text "Categary was successfully updated"
    click_on "Back"
  end

  test "destroying a Categary" do
    visit categaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categary was successfully destroyed"
  end
end
