require "application_system_test_case"

class SproutsTest < ApplicationSystemTestCase
  setup do
    @sprout = sprouts(:one)
  end

  test "visiting the index" do
    visit sprouts_url
    assert_selector "h1", text: "Sprouts"
  end

  test "creating a Sprout" do
    visit sprouts_url
    click_on "New Sprout"

    fill_in "Department", with: @sprout.department
    fill_in "Employee", with: @sprout.employee
    fill_in "Store", with: @sprout.store
    click_on "Create Sprout"

    assert_text "Sprout was successfully created"
    click_on "Back"
  end

  test "updating a Sprout" do
    visit sprouts_url
    click_on "Edit", match: :first

    fill_in "Department", with: @sprout.department
    fill_in "Employee", with: @sprout.employee
    fill_in "Store", with: @sprout.store
    click_on "Update Sprout"

    assert_text "Sprout was successfully updated"
    click_on "Back"
  end

  test "destroying a Sprout" do
    visit sprouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sprout was successfully destroyed"
  end
end
