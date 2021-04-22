require "application_system_test_case"

class UserAirlinesTest < ApplicationSystemTestCase
  setup do
    @user_airline = user_airlines(:one)
  end

  test "visiting the index" do
    visit user_airlines_url
    assert_selector "h1", text: "User Airlines"
  end

  test "creating a User airline" do
    visit user_airlines_url
    click_on "New User Airline"

    click_on "Create User airline"

    assert_text "User airline was successfully created"
    click_on "Back"
  end

  test "updating a User airline" do
    visit user_airlines_url
    click_on "Edit", match: :first

    click_on "Update User airline"

    assert_text "User airline was successfully updated"
    click_on "Back"
  end

  test "destroying a User airline" do
    visit user_airlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User airline was successfully destroyed"
  end
end
