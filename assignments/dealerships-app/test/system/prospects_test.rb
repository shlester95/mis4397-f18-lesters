require "application_system_test_case"

class ProspectsTest < ApplicationSystemTestCase
  setup do
    @prospect = prospects(:one)
  end

  test "visiting the index" do
    visit prospects_url
    assert_selector "h1", text: "Prospects"
  end

  test "creating a Prospect" do
    visit prospects_url
    click_on "New Prospect"

    fill_in "Address", with: @prospect.address
    fill_in "City", with: @prospect.city
    fill_in "Email Address", with: @prospect.email_address
    fill_in "First Name", with: @prospect.first_name
    fill_in "Last Name", with: @prospect.last_name
    fill_in "Mobile Phone Number", with: @prospect.mobile_phone_number
    fill_in "State", with: @prospect.state
    fill_in "Zip", with: @prospect.zip
    click_on "Create Prospect"

    assert_text "Prospect was successfully created"
    click_on "Back"
  end

  test "updating a Prospect" do
    visit prospects_url
    click_on "Edit", match: :first

    fill_in "Address", with: @prospect.address
    fill_in "City", with: @prospect.city
    fill_in "Email Address", with: @prospect.email_address
    fill_in "First Name", with: @prospect.first_name
    fill_in "Last Name", with: @prospect.last_name
    fill_in "Mobile Phone Number", with: @prospect.mobile_phone_number
    fill_in "State", with: @prospect.state
    fill_in "Zip", with: @prospect.zip
    click_on "Update Prospect"

    assert_text "Prospect was successfully updated"
    click_on "Back"
  end

  test "destroying a Prospect" do
    visit prospects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prospect was successfully destroyed"
  end
end
