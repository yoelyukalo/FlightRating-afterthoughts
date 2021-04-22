require "application_system_test_case"

class EverythingsTest < ApplicationSystemTestCase
  setup do
    @everything = everythings(:one)
  end

  test "visiting the index" do
    visit everythings_url
    assert_selector "h1", text: "Everythings"
  end

  test "creating a Everything" do
    visit everythings_url
    click_on "New Everything"

    click_on "Create Everything"

    assert_text "Everything was successfully created"
    click_on "Back"
  end

  test "updating a Everything" do
    visit everythings_url
    click_on "Edit", match: :first

    click_on "Update Everything"

    assert_text "Everything was successfully updated"
    click_on "Back"
  end

  test "destroying a Everything" do
    visit everythings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Everything was successfully destroyed"
  end
end
