require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Author", with: @book.author
    fill_in "Finished date", with: @book.finished_date
    fill_in "Readed chapters", with: @book.readed_chapters
    fill_in "Started date", with: @book.started_date
    fill_in "Subtitle", with: @book.subtitle
    fill_in "Title", with: @book.title
    fill_in "Total chapters", with: @book.total_chapters
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Author", with: @book.author
    fill_in "Finished date", with: @book.finished_date
    fill_in "Readed chapters", with: @book.readed_chapters
    fill_in "Started date", with: @book.started_date
    fill_in "Subtitle", with: @book.subtitle
    fill_in "Title", with: @book.title
    fill_in "Total chapters", with: @book.total_chapters
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
