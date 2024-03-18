require "application_system_test_case"

class ProductdsTest < ApplicationSystemTestCase
  setup do
    @productd = productds(:one)
  end

  test "visiting the index" do
    visit productds_url
    assert_selector "h1", text: "Productds"
  end

  test "creating a Productd" do
    visit productds_url
    click_on "New Productd"

    fill_in "Name", with: @productd.name
    fill_in "Price", with: @productd.price
    fill_in "Vendor", with: @productd.vendor
    click_on "Create Productd"

    assert_text "Productd was successfully created"
    click_on "Back"
  end

  test "updating a Productd" do
    visit productds_url
    click_on "Edit", match: :first

    fill_in "Name", with: @productd.name
    fill_in "Price", with: @productd.price
    fill_in "Vendor", with: @productd.vendor
    click_on "Update Productd"

    assert_text "Productd was successfully updated"
    click_on "Back"
  end

  test "destroying a Productd" do
    visit productds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Productd was successfully destroyed"
  end
end
