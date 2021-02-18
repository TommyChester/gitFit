require "application_system_test_case"

class GymRatsTest < ApplicationSystemTestCase
  setup do
    @gym_rat = gym_rats(:one)
  end

  test "visiting the index" do
    visit gym_rats_url
    assert_selector "h1", text: "Gym Rats"
  end

  test "creating a Gym rat" do
    visit gym_rats_url
    click_on "New Gym Rat"

    click_on "Create Gym rat"

    assert_text "Gym rat was successfully created"
    click_on "Back"
  end

  test "updating a Gym rat" do
    visit gym_rats_url
    click_on "Edit", match: :first

    click_on "Update Gym rat"

    assert_text "Gym rat was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym rat" do
    visit gym_rats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym rat was successfully destroyed"
  end
end
