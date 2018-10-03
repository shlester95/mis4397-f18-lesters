require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Condition", with: @car.condition
    fill_in "Location Address", with: @car.location_address
    fill_in "Location City", with: @car.location_city
    fill_in "Location State", with: @car.location_state
    fill_in "Location Zip", with: @car.location_zip
    fill_in "Model", with: @car.model
    fill_in "Price", with: @car.price
    fill_in "Sold By", with: @car.sold_by
    fill_in "Status", with: @car.status
    fill_in "Year", with: @car.year
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @car.condition
    fill_in "Location Address", with: @car.location_address
    fill_in "Location City", with: @car.location_city
    fill_in "Location State", with: @car.location_state
    fill_in "Location Zip", with: @car.location_zip
    fill_in "Model", with: @car.model
    fill_in "Price", with: @car.price
    fill_in "Sold By", with: @car.sold_by
    fill_in "Status", with: @car.status
    fill_in "Year", with: @car.year
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
