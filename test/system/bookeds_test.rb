require "application_system_test_case"

class BookedsTest < ApplicationSystemTestCase
  setup do
    @booked = bookeds(:one)
  end

  test "visiting the index" do
    visit bookeds_url
    assert_selector "h1", text: "Bookeds"
  end

  test "creating a Booked" do
    visit bookeds_url
    click_on "New Booked"

    click_on "Create Booked"

    assert_text "Booked was successfully created"
    click_on "Back"
  end

  test "updating a Booked" do
    visit bookeds_url
    click_on "Edit", match: :first

    click_on "Update Booked"

    assert_text "Booked was successfully updated"
    click_on "Back"
  end

  test "destroying a Booked" do
    visit bookeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booked was successfully destroyed"
  end
end
