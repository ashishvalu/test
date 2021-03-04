require "application_system_test_case"

class AuthorsBooksTest < ApplicationSystemTestCase
  setup do
    @authors_book = authors_books(:one)
  end

  test "visiting the index" do
    visit authors_books_url
    assert_selector "h1", text: "Authors Books"
  end

  test "creating a Authors book" do
    visit authors_books_url
    click_on "New Authors Book"

    fill_in "Author", with: @authors_book.author_id
    fill_in "Book", with: @authors_book.book_id
    click_on "Create Authors book"

    assert_text "Authors book was successfully created"
    click_on "Back"
  end

  test "updating a Authors book" do
    visit authors_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @authors_book.author_id
    fill_in "Book", with: @authors_book.book_id
    click_on "Update Authors book"

    assert_text "Authors book was successfully updated"
    click_on "Back"
  end

  test "destroying a Authors book" do
    visit authors_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authors book was successfully destroyed"
  end
end
