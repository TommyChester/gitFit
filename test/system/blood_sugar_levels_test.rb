require "application_system_test_case"

class BloodSugarLevelsTest < ApplicationSystemTestCase
  setup do
    @blood_sugar_level = blood_sugar_levels(:one)
  end

  test "visiting the index" do
    visit blood_sugar_levels_url
    assert_selector "h1", text: "Blood Sugar Levels"
  end

  test "creating a Blood sugar level" do
    visit blood_sugar_levels_url
    click_on "New Blood Sugar Level"

    fill_in "Occurred at", with: @blood_sugar_level.occurred_at
    fill_in "Value", with: @blood_sugar_level.value
    click_on "Create Blood sugar level"

    assert_text "Blood sugar level was successfully created"
    click_on "Back"
  end

  test "updating a Blood sugar level" do
    visit blood_sugar_levels_url
    click_on "Edit", match: :first

    fill_in "Occurred at", with: @blood_sugar_level.occurred_at
    fill_in "Value", with: @blood_sugar_level.value
    click_on "Update Blood sugar level"

    assert_text "Blood sugar level was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood sugar level" do
    visit blood_sugar_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood sugar level was successfully destroyed"
  end
end
