require "application_system_test_case"

class EmergenciesTest < ApplicationSystemTestCase
  setup do
    @emergency = emergencies(:one)
  end

  test "visiting the index" do
    visit emergencies_url
    assert_selector "h1", text: "Emergencies"
  end

  test "creating a Emergency" do
    visit emergencies_url
    click_on "New Emergency"

    fill_in "Latitude", with: @emergency.latitude
    fill_in "Longitude", with: @emergency.longitude
    fill_in "Profile", with: @emergency.profile_id
    click_on "Create Emergency"

    assert_text "Emergency was successfully created"
    click_on "Back"
  end

  test "updating a Emergency" do
    visit emergencies_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @emergency.latitude
    fill_in "Longitude", with: @emergency.longitude
    fill_in "Profile", with: @emergency.profile_id
    click_on "Update Emergency"

    assert_text "Emergency was successfully updated"
    click_on "Back"
  end

  test "destroying a Emergency" do
    visit emergencies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emergency was successfully destroyed"
  end
end
